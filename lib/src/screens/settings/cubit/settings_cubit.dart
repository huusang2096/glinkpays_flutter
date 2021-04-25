import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit()
      : super(Initial(
            Data(isTouchFaceID: true, isTurnLight: false, isLoading: false)));

  touchFaceID() async {
    bool _isTouchFaceID = !state.data.isTouchFaceID;
    try {
      appPref.isEnabledBioLogin = _isTouchFaceID;
      print('_isTouchFaceID $_isTouchFaceID');
      emit(TouchTurnFaceID(state.data.copyWith(isTouchFaceID: _isTouchFaceID)));
    } catch (e) {
      handleAppError(e);
    }
  }

  touchToTurnLight() async {
    bool _isTurnLight = !state.data.isTurnLight;
    try {
      if (state.data.isTurnLight == true) {
        //if true turn touch faceID ON
      } else {
        //if false turn touch faceID OFF
      }
      emit(TouchTurnLight(state.data.copyWith(isTurnLight: _isTurnLight)));
    } catch (e) {
      handleAppError(e);
    }
  }

  getInfoSetting() async {
    try {
      bool _isTurnOn = await appPref.isEnabledBioLogin;
      emit(TouchTurnFaceID(state.data.copyWith(isTouchFaceID: _isTurnOn)));
    } catch (e) {
      handleAppError(e);
    }
  }

  // DarkMode
  // getInfoSettingDarkLight() async {
  //   try {
  //     //bool _isTurnOn =  await funcTurnLight(); //<------change
  //     emit(TouchTurnLight(state.data.copyWith(isTurnLight: false)));
  //   } catch (e) {
  //     handleAppError(e);
  //   }
  // }
}
