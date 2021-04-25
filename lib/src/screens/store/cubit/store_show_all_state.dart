part of 'store_show_all_cubit.dart';

@freezed
abstract class StoreShowAllStateData with _$StoreShowAllStateData {
  const factory StoreShowAllStateData({
    @nullable StoreShowAllResponse topWeekResponse,
    @Default(false) bool isLoading,
  }) = StoreShowAllData;
}

@freezed
abstract class StoreShowAllState with _$StoreShowAllState {
  const factory StoreShowAllState.initial(StoreShowAllData data) = Initial;
  const factory StoreShowAllState.loading(StoreShowAllData data) = Loading;
  const factory StoreShowAllState.loaded(StoreShowAllData data) = Loaded;
}
