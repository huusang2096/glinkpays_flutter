part of 'inheritance_cubit.dart';

@freezed
abstract class InheritanceStateData with _$InheritanceStateData {
  const factory InheritanceStateData(
      {@nullable User user,
      @Default(false) bool isLoadingInheritance,
      @Default(false) bool isLoadingSignature,
      @Default(false) bool isLoadingDocument,
      @Default(false) bool isLoadingShimmer,
      @Default([]) List<ImageSelect> imageSelects,
      @Default(0) int indexVerification,
      @Default('') String documentVerifyStatus,
      @Default('') String errorText}) = Data;
}

@freezed
abstract class InheritanceState with _$InheritanceState {
  const factory InheritanceState.initial(Data data) = Initial;
  const factory InheritanceState.loading(Data data) = Loading;
  const factory InheritanceState.loaded(Data data) = Loaded;
  const factory InheritanceState.addImage(Data data) = AddImage;
  const factory InheritanceState.selectVerification(Data data) =
      SelectVerification;
}
