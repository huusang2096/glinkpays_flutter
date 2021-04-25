import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/restaurant.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchStateData with _$SearchStateData {
  const factory SearchStateData(
      {String search,
      List<Restaurant> searchs,
      Position position,
      @Default(5) int distance}) = Data;
}

// Union
@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.init(SearchStateData data) = Initial;
  const factory SearchState.position(SearchStateData data) = PositionData;
  const factory SearchState.news(SearchStateData data) = ListFoodData;
}
