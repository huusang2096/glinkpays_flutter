part of 'policy_cubit.dart';

@freezed
abstract class PolicyStateData with _$PolicyStateData {
  const factory PolicyStateData(
      {@Default([]) List<Policy> policies,
      @Default(false) bool isLoading,
      @Default(false) isAgree}) = Data;
}

@freezed
abstract class PolicyState with _$PolicyState {
  const factory PolicyState.initial(Data data) = Initial;
  const factory PolicyState.loading(Data data) = Loading;
  const factory PolicyState.loaded(Data data) = Loaded;
  const factory PolicyState.updateAgrre(Data data) = UpdateAgree;
  const factory PolicyState.error(Data data) = Error;
}
