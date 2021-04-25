import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/repository/contacts_repository.dart';

part 'transfer_select_user_state.dart';

class TransferSelectUserCubit extends BaseCubit<TransferSelectUserState> {
  TransferSelectUserCubit() : super(TransferSelectUserInitial());

  @override
  dynamic initData() async {
    checkLogin(checkInit: true);
    fetchContact();
    return super.initData();
  }

  void checkLogin({
    bool checkInit = false,
  }) async {
    final token = await appPref.token;
    if (token.isEmpty) {
      if (checkInit) {
        emit(TransferSelectUserState.copyWith(state: state, checkLogin: false));
      } else {
        emit(TransferSelectUserCheckLogin(false, state));
      }
    } else {
      if (checkInit) {
        emit(TransferSelectUserState.copyWith(state: state, checkLogin: true));
      } else {
        emit(TransferSelectUserCheckLogin(true, state));
      }
    }
  }

  void fetchContact() async {
    final contactRepository = ContactsRepository();
    final listContacts = await contactRepository.fetchContacts();

    if (listContacts.isNotEmpty) {
      listContacts.removeWhere((element) => element.phones.isEmpty);
    }

    emit(TransferSelectUserFetchContact(
        listContacts, contactRepository.getPermissionStatus, state));
  }

  String formatPhone(String phone) {
    String result;
    if (phone.startsWith('0')) {
      phone = phone.replaceRange(0, 1, '');
      result = '+84' + phone;
    }
    return result ?? phone;
  }

  void searchUserInit(String searchContent) async {
    try {
      searchContent = formatPhone(searchContent);
      print('Search content: $searchContent');
      if (searchContent.trim().isEmpty) {
        changeSuffixIcon(false);
        emit(TransferSelectUserSearchUser(null, 1, '', false, state));
        return;
      }
      if (state.hasReachedSearch) {
        emit(TransferChangeHasReached(false, state));
      }

      changeSuffixIcon(true);
      changeIsLoading(true);

      final response = await dataRepository.searchUser(
          searchContent: searchContent.trim(), currentPage: 1);
      if (response.success) {
        changeIsLoading(false);
        emit(TransferSelectUserSearchUser(
            response, 1, searchContent, state.hasReachedSearch, state));
      } else {
        await dialogService.showDialog(
            title: appConfig.appName, description: 'something_went_wrong'.tr);
      }
    } catch (e) {
      changeIsLoading(false);
      handleAppError(e);
    }
  }

  void searchUserMore() async {
    try {
      final response = await dataRepository.searchUser(
          searchContent: state.currentSearchContent,
          currentPage: state.currentPage + 1);

      final searchResponse = SearchResponse(
          success: response.success,
          message: response.message,
          data: state.searchResponse.data + response.data);
      if (response.success) {
        emit(TransferSelectUserSearchUser(searchResponse, state.currentPage + 1,
            state.currentSearchContent, false, state));
      } else {
        await dialogService.showDialog(
            title: appConfig.appName, description: 'something_went_wrong'.tr);
      }
    } catch (e) {
      emit(TransferLoadMoreError(state));
    }
  }

  void changeSuffixIcon(bool isChange) {
    emit(TransferChangeSuffixIcon(isChange, state));
  }

  void changeIsLoading(bool isLoading) {
    emit(TransferChangeLoading(isLoading, state));
  }

  void handleSuffixIcon(TextEditingController controller) async {
    if (!state.changeSuffixIcon) {
      if (state.checkLogin) {
        final data = await navigator.pushNamed(RouteGenerator.scanQrCodeScreen,
            arguments: {'isPopAndReturnData': true}) as Map;
        if (data != null) {
          final phone = data['data'];
          searchUserFromDataByQrCode(phone);
        }
      } else {
        snackbarService.showSnackbar(
            message: 'signin_to_use_feature'.tr,
            duration: Duration(milliseconds: 1000));
      }
    } else {
      if (state.isLoading) {
        return;
      }
      controller.clear();
      changeSuffixIcon(false);
      emit(TransferSelectUserSearchUser(null, 1, '', false, state));
    }
  }

  void hasReachedSearch() async {
    if (!state.hasReachedSearch) {
      emit(TransferChangeHasReached(true, state));
      await Future.delayed(Duration(seconds: 1));
      searchUserMore();
    }
  }

  void searchUserFromContact(String phone) async {
    if (!state.checkLogin) {
      await snackbarService.showSnackbar(
          message: 'signin_to_use_feature'.tr, duration: Duration(seconds: 2));
      return;
    }

    try {
      showLoadingScaffold(true);
      String formatInit = phone.replaceAll(RegExp(r'[ (-)-]'), '');
      if (!formatInit.isPhoneNumber) {
        await snackbarService.showSnackbar(
            message: 'we_cannot_recognize_this_phone_number'.tr,
            duration: Duration(seconds: 1));
      } else {
        final result = await PhoneNumber.getParsableNumber(
            PhoneNumber(phoneNumber: phone, isoCode: 'VN', dialCode: '+84'));
        final format = '+84' + result.replaceAll(' ', '');
        final response = await dataRepository.findExactUser(format);
        print(format);
        if (response.data != null) {
          await navigator.pushNamed(RouteGenerator.transferScreen,
              arguments: {'user': response.data});
        } else {
          await snackbarService.showSnackbar(
              message: 'this_user_is_not_yet_use_vipay'.tr,
              duration: Duration(seconds: 1));
        }
      }
    } catch (e) {
      await handleAppError(e);
    }
    await Future.delayed(Duration(milliseconds: 200));
    showLoadingScaffold(false);
  }

  void showLoadingScaffold(bool check) {
    emit(TransferChangeIsLoadingScaffold(check, state));
  }

  void searchUserFromDataByQrCode(phone) async {
    try {
      showLoadingScaffold(true);
      final response = await dataRepository.findExactUser(phone);
      if (response.data != null) {
        await navigator.pushNamed(RouteGenerator.transferScreen,
            arguments: {'user': response.data});
      } else {
        await snackbarService.showSnackbar(
            message: 'this_user_is_not_yet_use_vipay'.tr,
            duration: Duration(seconds: 1));
      }
    } catch (e) {
      await handleAppError(e);
    }
    await Future.delayed(Duration(milliseconds: 200));
    showLoadingScaffold(false);
  }
}
