part of 'settings_cubit.dart';

@freezed
abstract class SettingsStateData with _$SettingsStateData {
  const factory SettingsStateData({
    bool isTouchFaceID,
    bool isTurnLight,
    bool isLoading,
  }) = Data;
}

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState.initial(Data data) = Initial;
  const factory SettingsState.loading(Data data) = Loading;
  const factory SettingsState.touchTurnFaceID(Data data) = TouchTurnFaceID;
  const factory SettingsState.touchTurnLight(Data data) = TouchTurnLight;
}
