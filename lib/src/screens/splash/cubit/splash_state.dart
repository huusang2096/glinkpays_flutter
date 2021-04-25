part of 'splash_cubit.dart';

@freezed
abstract class SplashStateData with _$SplashStateData {
  const factory SplashStateData({@Default('') String version}) = Data;
}

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.intial(Data data) = Initial;
  const factory SplashState.loading(Data data) = Loading;
  const factory SplashState.loaded(Data data) = Loaded;
}
