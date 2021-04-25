import 'dart:io';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/image_selected_model.dart';
import 'package:vipay/src/models/user.dart';
import 'package:uuid/uuid.dart';
import 'package:vipay/src/models/profile/profile_request.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';
import 'package:vipay/src/services/media_service.dart';
part 'inheritance_state.dart';

part 'inheritance_cubit.freezed.dart';

class InheritanceCubit extends BaseCubit<InheritanceState> {
  InheritanceCubit()
      : super(InheritanceState.initial(
            Data(isLoadingShimmer: true, imageSelects: [
          ImageSelect(url: null, id: 'img1'),
          ImageSelect(url: null, id: 'img2'),
          ImageSelect(url: null, id: 'img3')
        ])));

  final _phoneAuthService = locator<PhoneAuthService>();
  final _localMediaService = LocalMediaService();
  Future<void> loadData() async {
    try {
      emit(Loading(state.data.copyWith()));
      final response = await dataRepository.getUserProfile();
      final user = response.data;
      if (!response.data.documentVerification.isBlank) {
        int indexVerify = 0;
        if (response.data.documentVerification.first.identityType ==
            'national_id') {
          indexVerify = 1;
        }
        List<ImageSelect> listImgDocument =
            await urlToFile(response.data.documentVerification.first.path);
        emit(Loaded(state.data.copyWith(
            user: user,
            imageSelects: listImgDocument,
            isLoadingShimmer: false,
            indexVerification: indexVerify,
            documentVerifyStatus:
                response.data.documentVerification.first.status)));
        return;
      }
      emit(Loaded(state.data.copyWith(user: user, isLoadingShimmer: false)));
      logger.d(user.toRawJson());
    } catch (error) {
      handleAppError(error);
    }
    emit(Loading(state.data.copyWith()));
  }

  void updateInheritanceInfor(
      {String firstName,
      String lastName,
      String phone,
      String address,
      String identity}) async {
    try {
      // checkChange(firstName, lastName, phone, address, identity);
      // error when user dont input everything to textfield
      emit(Loading(state.data.copyWith(isLoadingInheritance: true)));
      final request = Inherited(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          address: address,
          identity: identity);

      if (!validatorRequest(request)) {
        emit(Loading(state.data.copyWith(isLoadingInheritance: false)));
        return;
      }

      final responsePhoneAuth = await _phoneAuthService
          .verifyPhoneNumber(formatPhone(state.data.user.phone));

      request.verifyToken = responsePhoneAuth.verifyToken;
      final response = await dataRepository.updateUserInherited(request);

      if (response.success) {
        snackbarService.showSnackbar(message: response.message);
        emit(Loaded(state.data
            .copyWith(user: response.data, isLoadingInheritance: false)));
      } else {
        snackbarService.showSnackbar(message: response.message);
        emit(Loaded(state.data.copyWith(isLoadingInheritance: false)));
      }
    } catch (e) {
      handleAppError(e);
      emit(Loaded(state.data.copyWith(isLoadingInheritance: false)));
    }
  }

  void updateSignature(File imgFile, String phone) async {
    try {
      emit(Loading(state.data.copyWith(isLoadingSignature: true)));
      final verifyToken =
          await _phoneAuthService.verifyPhoneNumber(formatPhone(phone));

      if (verifyToken.isBlank) {
        emit(Loading(state.data.copyWith(isLoadingSignature: false)));
        return;
      }
      final response = await dataRepository.updateSignature(
          imgFile, verifyToken.verifyToken);

      if (response.success) {
        snackbarService.showSnackbar(message: response.message);
        emit(Loaded(state.data
            .copyWith(user: response.data, isLoadingSignature: false)));
      } else {
        snackbarService.showSnackbar(message: response.message);
        emit(Loaded(state.data.copyWith(isLoadingSignature: false)));
      }
    } catch (e) {
      final logger = Logger();
      logger.e(e);
      handleAppError(e);
      emit(Loaded(state.data.copyWith(isLoadingSignature: false)));
    }
  }

  Future<void> updateDocument(List<ImageSelect> documentImgs,
      String identityNumber, String documentType) async {
    try {
      if (documentImgs.isBlank) {
        emit(Loaded(
            state.data.copyWith(errorText: 'this_document_cannot_blank'.tr)));
        return;
      }
      emit(Loaded(state.data.copyWith(isLoadingDocument: true)));
      List<File> listDocumentImg = List<File>();
      bool isReturnError = false;
      await documentImgs.forEach((element) {
        if (element.url == null) {
          return isReturnError = true;
        } else {
          listDocumentImg.add(element.url);
        }
      });
      if (!isReturnError) {
        if (!state.data.user.documentVerification.isBlank) {
          final isConfirm = await dialogService.showConfirmationDialog(
              title: appConfig.appName,
              cancelTitle: 'cancel'.tr,
              confirmationTitle: 'ok'.tr,
              description: 'are_you_sure_to_update'.tr);
          if (isConfirm.confirmed == false) {
            emit(Loaded(state.data.copyWith(isLoadingDocument: false)));
            return;
          }
        }
        final responseVerifyToken = await _phoneAuthService
            .verifyPhoneNumber(formatPhone(state.data.user.phone));
        print('otp: ' + responseVerifyToken.verifyToken);
        if (responseVerifyToken.isBlank) {
          emit(Loaded(state.data.copyWith(isLoadingDocument: false)));
          return;
        }
        final response = await dataRepository.updateDocument(
            documentType, '', listDocumentImg, responseVerifyToken.verifyToken);
        if (response.success) {
          snackbarService.showSnackbar(message: response.message);
        }
      } else {
        emit(Loaded(state.data.copyWith(
            isLoadingDocument: false,
            errorText: 'this_document_cannot_blank'.tr)));
        return;
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(Loaded(state.data.copyWith(isLoadingDocument: false, errorText: '')));
/*
    loadData();
*/
  }

  void addImage(int index) async {
    try {
      final File file = await _localMediaService.pickImage();
      if (file == null) return;
      if (file.path.isBlank) return;
      List<ImageSelect> changeImageSelects = [...state.data.imageSelects];
      ImageSelect imageSelect = ImageSelect();
      imageSelect.url = file;
      imageSelect.id = Uuid().v4();
      changeImageSelects.removeAt(index);
      changeImageSelects.insert(index, imageSelect);
      emit(AddImage(state.data.copyWith(imageSelects: changeImageSelects)));
    } catch (e) {
      handleAppError(e);
    }
  }

  void deleteImage(int index) {
    List<ImageSelect> changeImageSelects = [...state.data.imageSelects];
    ImageSelect imageSelect = ImageSelect();
    imageSelect.url = null;
    imageSelect.id = Uuid().v4();
    changeImageSelects.removeAt(index);
    changeImageSelects.insert(index, imageSelect);
    emit(AddImage(state.data.copyWith(imageSelects: changeImageSelects)));
  }

  void selectVerification(int verification) {
    emit(SelectVerification(
        state.data.copyWith(indexVerification: verification)));
  }

  String formatPhone(String phone) {
    String result;
    if (!phone.contains('+84')) {
      result = '+84' + phone;
    }

    return result ?? phone;
  }

  bool validatorRequest(Inherited request) {
    final duration = Duration(milliseconds: 1500);
    if (request.firstName.isEmpty) {
      snackbarService.showSnackbar(
          message: 'the_first_name_field_is_required'.tr, duration: duration);
      return false;
    }

    if (request.lastName.isEmpty) {
      snackbarService.showSnackbar(
          message: 'the_last_name_field_is_required'.tr, duration: duration);
      return false;
    }

    if (request.phone.isEmpty) {
      snackbarService.showSnackbar(
          message: 'the_phone_field_is_required'.tr, duration: duration);
      return false;
    }

    if (request.address.isEmpty) {
      snackbarService.showSnackbar(
          message: 'the_address_field_is_required'.tr, duration: duration);
      return false;
    }

    if (request.firstName == state.data.user.inherited.firstName &&
        request.lastName == state.data.user.inherited.lastName &&
        request.phone == state.data.user.inherited.phone &&
        request.address == state.data.user.inherited.address &&
        request.identity == state.data.user.inherited.identity) {
      snackbarService.showSnackbar(
          message: 'edit_information_before_updating'.tr, duration: duration);
      return false;
    }
    return true;
  }

  void checkChange(String firstName, String lastName, String phone,
      String address, String identity) {
    if (firstName.isEmpty ||
        lastName.isEmpty ||
        phone.isEmpty ||
        address.isEmpty ||
        identity.isEmpty) {
      dialogService.showDialog();
    }
  }

  Future<List<ImageSelect>> urlToFile(List<String> imageUrl) async {
    List<ImageSelect> listImgSelect = state.data.imageSelects;
    var rng = Random();
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    for (int i = 0; i < imageUrl.length; i++) {
      File file = File('$tempPath' + (rng.nextInt(100)).toString() + '.png');
      http.Response response = await http.get(imageUrl[i]);
      await file.writeAsBytes(response.bodyBytes);
      ImageSelect imgSelect = ImageSelect();
      imgSelect.url = file;
      imgSelect.id = rng.toString();
      listImgSelect.removeAt(i);
      listImgSelect.insert(i, imgSelect);
    }
    return listImgSelect;
  }

  void verifyPhone(PhoneNumber phoneNumber) async {
    emit(Loading(state.data.copyWith(isLoadingSignature: true)));
    try {
      final responseVerifyToken =
          await _phoneAuthService.verifyPhoneNumber(phoneNumber.phoneNumber);
      if (responseVerifyToken != null) {
        await updateProfile(responseVerifyToken.verifyToken, phoneNumber);
        emit(Loading(state.data.copyWith(isLoadingSignature: false)));
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoadingSignature: false)));
    }
  }

  Future<void> updateProfile(
      String verifyToken, PhoneNumber phoneNumber) async {
    try {
      final user = state.data.user;
      ProfileRequest request = ProfileRequest(
          address: user?.address,
          lastName: user?.lastName,
          firstName: user?.firstName,
          formattedPhone: phoneNumber.phoneNumber,
          defaultWallet: 1,
          userCarrierCode: phoneNumber.dialCode.replaceAll('+', ''),
          email: user?.email,
          country: user?.countryId,
          phone: phoneNumber.parseNumber(),
          gender: user?.gender,
          birthday: user?.birthday);
      print(request.toRawJson());
      UserResponse profileResponse =
          await dataRepository.updateProfile(profileRequest: request);

      if (profileResponse.success) {
        snackbarService.showSnackbar(
            message: 'phone_number_verification_is_successful'.tr);
        await loadData();
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void verifyKyc(String documentType) async {
    if (state.data.user.phone.isEmpty) {
    } else {
      await updateDocument(state.data.imageSelects,
          state.data.user.inherited.identity, documentType);
      await loadData();
    }
  }

  double calculatePercent() {
    double result = 0.0;
    if (state.data.user != null) {
      if (state?.data?.user?.phone != null &&
          state.data.user.phone.isNotEmpty &&
          state.data.user.phoneVerificationCode &&
          state.data.user.emailVerification &&
          !state.data.user.identityVerificationWarring) {
        return 1.0;
      }

      if (state?.data?.user?.phone != null &&
          state.data.user.phone.isNotEmpty &&
          state.data.user.phoneVerificationCode) {
        result += 0.50;
      }

      if (!state.data.user.identityVerificationWarring) {
        if (state.data.user.documentVerification.first.status ==
            VerifyDocumentationStatus.APPROVED) {
          result += 0.50;
        }
      }
    }
    return result;
  }

  Future<bool> resendEmail() async {
    try {
      emit(Loaded(state.data.copyWith(isLoadingInheritance: true)));
      final response = await dataRepository.resendEmail();
      emit(Loaded(state.data.copyWith(isLoadingInheritance: false)));
      if (response.success) {
        snackbarService.showSnackbar(
            message: 'we_have_sent_an_email_to_your_inbox'.tr);

        return true;
      } else {
        snackbarService.showSnackbar(message: response.message);
        return false;
      }
    } catch (e) {
      emit(Loaded(state.data.copyWith(isLoadingInheritance: false)));
      handleAppError(e);
      return false;
    }
  }
}
