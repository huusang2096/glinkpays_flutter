import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/search/store_response.dart';

import 'search_state.dart';

class SearchCubit extends BaseCubit<SearchState> {
  SearchCubit()
      : super(Initial(Data(
            search: 'NORMAL',
            searchs: [],
            distance: 5,
            position: Position(
              latitude: 10.82234606075894,
              longitude: 106.63023210197537,
            ))));
  final locatorLocationService = locator<LocationService>();

  @override
  initData() async {
    await setCurrentLocation();
  }

  void clear() {
    emit(ListFoodData(state.data.copyWith(searchs: [])));
    emit(ListFoodData(state.data.copyWith(search: 'NORMAL', searchs: [])));
  }

  Future<void> setCurrentLocation() async {
    try {
      await locatorLocationService.fetchLocation(askPermission: true);
      Position position = locatorLocationService.position;
      emit(PositionData(state.data.copyWith(position: position)));
    } catch (e) {
      handleAppError(e);
    }
  }

  getListSearch(String search, {int radius}) async {
    try {
      emit(ListFoodData(state.data.copyWith(search: 'SEARCH')));
      var searchContent = 'name:$search;description:$search';
      var searchFields = 'name:like;description:like';
      String myLon = state.data.position.longitude.toString();
      String myLat = state.data.position.latitude.toString();
      String areaLon = state.data.position.longitude.toString();
      String areaLat = state.data.position.latitude.toString();
      String orderBy = 'area';
      String limit = '5';

      StoreResponse response = await dataRepository.searchListStore(
          searchContent: searchContent,
          searchFields: searchFields,
          myLon: myLon,
          myLat: myLat,
          areaLon: areaLon,
          areaLat: areaLat,
          orderBy: orderBy,
          limit: limit,
          radius: radius);
      if (response != null) {
        if (response.data != null && response.data.length > 0) {
          emit(ListFoodData(
              state.data.copyWith(searchs: response.data, distance: radius)));
          emit(ListFoodData(state.data.copyWith(search: 'OK')));
        } else {
          emit(
              ListFoodData(state.data.copyWith(searchs: [], distance: radius)));
          emit(ListFoodData(state.data.copyWith(search: 'ZERO_RESULTS')));
        }
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void selectDistance(int radius) {
    emit(ListFoodData(state.data.copyWith(distance: radius)));
  }
}
