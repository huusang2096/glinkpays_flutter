part of 'information_app_cubit.dart';

@freezed
abstract class InformationAppStateData with _$InformationAppStateData {
  const factory InformationAppStateData({String version}) = Data;
}

@freezed
abstract class InformationAppState with _$InformationAppState {
  const factory InformationAppState.initial(Data data) = Initial;
  const factory InformationAppState.loading(Data data) = Loading;
  const factory InformationAppState.loaded(Data data) = Loaded;
}
