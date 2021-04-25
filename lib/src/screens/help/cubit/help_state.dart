part of 'help_cubit.dart';

@freezed
abstract class HelpStateData with _$HelpStateData {
  const factory HelpStateData({
    HelpResponse helpResponse,
    isLoading,
  }) = Data;
}

@freezed
abstract class HelpState with _$HelpState {
  const factory HelpState.initial(Data data) = Initial;
  const factory HelpState.loading(Data data) = Loading;
  const factory HelpState.loaded(Data data) = Loaded;
}
