import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geocoding/geocoding.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/profile/profile_request.dart';
import 'package:vipay/src/models/profile/profile_request_img.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';
import 'package:vipay/src/services/media_service.dart';

part 'profile_state.dart';

class ProfileCubit extends BaseCubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  final _localMediaService = LocalMediaService();

  void loadData() async {
    await getProfile();
    await _updateUserLocation();
  }

  void _updateUserLocation() async {
    if (appPref.token.isEmpty) {
      return;
    }
    try {
      final _locationService = locator<LocationService>();
      await _locationService.fetchLocation(askPermission: true);
      final _currentLocation = _locationService.position;
      final List<Placemark> placemarks = await placemarkFromCoordinates(
          _currentLocation.latitude, _currentLocation.longitude);

      if (_currentLocation != null || _currentLocation.latitude != 0) {
        await dataRepository.updateCurrentLocation(
            lat: _currentLocation.latitude,
            lng: _currentLocation.longitude,
            city: placemarks?.first?.administrativeArea ?? '');
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void getProfile() async {
    if (appPref.token.isBlank) {
      return;
    }
    try {
      emit(state.copyWith(isLoading: true));
      UserResponse response = await dataRepository.getUserProfile();
      double percent = 0;
      //show banner warning verify in home screen
      if (response.data.phoneVerificationCode) {
        percent += 0.3333333333333333;
      }
      if (handleStatusWarning()) {
        percent += 0.3333333333333333;
      }
      if (response.data.emailVerification) {
        percent += 0.3333333333333333;
      }
      emit(state.copyWith(verifyProcessPercent: percent));
      if (response != null) {
        final _request = state.profileRequest;
        _request.gender = response.data?.gender ?? 'male';
        emit(GetProfileSuccessState(profileResponse: response, state: state));
        emit(state.copyWith(profileRequest: _request));
        appPref.userName = response.data?.name;
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(state.copyWith(isLoading: false));
  }

  void submitUpdate({
    PhoneNumber mobile,
    String firstNames,
    String lastName,
    String email,
    String address,
    String dob,
  }) async {
    File _avatar = state.profileRequestImg?.image;
    String dobResponse = state.profileResponse.data.birthday ?? '';
    if (dob.isEmpty) {
      snackbarService.showSnackbar(message: 'please_update_dob'.tr);
      return;
    }

    try {
      ProfileRequest request = ProfileRequest(
        address: address,
        lastName: lastName,
        firstName: firstNames,
        defaultWallet: 1,
        userCarrierCode: mobile.dialCode.replaceAll('+', ''),
        email: email,
        country: state.profileResponse.data.countryId,
        phone: mobile.toString(),
        gender: state.profileRequest.gender,
        birthday: dob ?? '',
      );

      emit(state.copyWith(isLoading: true));

      if (_avatar != null) {
        await dataRepository
            .updateProfileImg(file: _avatar)
            .then((value) => state.profileRequestImg.image = null);
      }

      if (_avatar == null &&
          request.address == state.profileResponse.data.address1 &&
          request.lastName == state.profileResponse.data.lastName &&
          request.firstName == state.profileResponse.data.firstName &&
          request.birthday == dobResponse &&
          request.gender == state.profileResponse.data.gender &&
          request.email == state.profileResponse.data.email) {
        snackbarService.showSnackbar(message: 'updated'.tr);
        emit(state.copyWith(isLoading: false));
        return;
      } else {
        UserResponse profileResponse =
            await dataRepository.updateProfile(profileRequest: request);

        emit(UpdateProfileSuccessState(
            profileResponse: profileResponse, state: state));
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<bool> logout() async {
    try {
      final dialogResponse = await dialogService.showConfirmationDialog(
          title: appConfig.appName,
          description: 'are_you_sure_to_log_out'.tr,
          cancelTitle: 'cancel'.tr,
          confirmationTitle: 'ok'.tr);

      if (!dialogResponse.confirmed) {
        return false;
      }

      emit(state.copyWith(isLoading: true));
      final response = await dataRepository.logout();
      if (response.success) {
        await appPref.logout();
        await dataRepository.loadAuthHeader();
        final newState = LogoutSuccessState(state: state);
        newState.profileResponse = null;
        emit(newState);
        emit(state.copyWith(isLoading: false));
        return response.success;
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(state.copyWith(isLoading: false));
    return false;
  }

  void updateFirstName(String firstName) {
    final _request = state.profileRequest;
    _request.firstName = firstName;
    emit(ProfileUpdateState(_request, state));
  }

  void updateLastName(String lastName) {
    final _request = state.profileRequest;
    _request.lastName = lastName;
    emit(ProfileUpdateState(_request, state));
  }

  void updatePhone(String phone) {
    final _request = state.profileRequest;
    _request.phone = phone;
    emit(ProfileUpdateState(_request, state));
  }

  void updateCountryCode(String countryCode) {
    final _request = state.profileRequest;
    _request.userDefaultCountry = countryCode;
    emit(ProfileUpdateState(_request, state));
  }

  void updateAddress(String address) {
    final _request = state.profileRequest;
    _request.address = address ??= '';
    emit(ProfileUpdateState(_request, state));
  }

  void updateEmail(String email) {
    final _request = state.profileRequest;
    _request.email = email;
    emit(ProfileUpdateState(_request, state));
  }

  //onSelectImageFromDevice
  void updateImage() async {
    try {
      final file = await _localMediaService.pickImage();
      if (file == null) {
        return;
      }
      final profileRequestImg = ProfileRequestImg(image: file);
      emit(ProfileUpdateImgState(profileRequestImg, state));
    } catch (error) {
      logger.e(error);
      showErrorMessage('unable_to_select_image'.tr);
    }
  }

  void selectGender(String gender) {
    final _request = state.profileRequest;
    _request.gender = gender;
    emit(ProfileUpdateState(_request, state));
  }

  void selectBirthDay(DateTime birthDay) {
    final _request = state.profileRequest;
    _request.birthday = dateFormatter.format(birthDay);
    emit(ProfileUpdateState(_request, state));
  }

  Future<void> captureAndSharePng(GlobalKey<ScaffoldState> _scaffoldKey) async {
    try {
      RenderRepaintBoundary boundary =
          _scaffoldKey.currentContext.findRenderObject();
      final image = await boundary.toImage();
      ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/qrcode.png').create();
      await file.writeAsBytes(pngBytes);
      await Share.shareFiles(['${tempDir.path}/qrcode.png'],
          text: 'qr_code'.tr);
    } catch (e) {
      //print(e.toString());
    }
  }

  bool handleStatusWarning() {
    if (state.profileResponse?.data == null) {
      return false;
    }
    if (state.profileResponse.data.emailVerification &&
        state.profileResponse.data.phoneVerificationCode &&
        !state.profileResponse.data.identityVerificationWarring) {
      if (state.profileResponse.data.documentVerification.first.status ==
          VerifyDocumentationStatus.APPROVED) {
        return true;
      }
    }
    return false;
  }

  Future<void> captureAndShareStockPng(
      GlobalKey<ScaffoldState> _scaffoldKey) async {
    try {
      RenderRepaintBoundary boundary =
          _scaffoldKey.currentContext.findRenderObject();
      final image = await boundary.toImage();
      ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/stock.png').create();
      await file.writeAsBytes(pngBytes);
      await Share.shareFiles(['${tempDir.path}/stock.png'], text: 'stock'.tr);
    } catch (e) {
      //print(e.toString());
    }
  }
}
