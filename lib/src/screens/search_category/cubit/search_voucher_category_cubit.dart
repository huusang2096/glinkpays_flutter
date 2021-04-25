import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';
import 'package:simplest/simplest.dart';

part 'search_voucher_category_state.dart';
part 'search_voucher_category_cubit.freezed.dart';

class SearchVoucherCategoryCubit extends BaseCubit<SearchVoucherCategoryState> {
  SearchVoucherCategoryCubit()
      : super(Initial(Data(
            search: ' ',
            searchs: [],
            categoryId: [],
            categorys: [],
            foodTypeId: [],
            voucherTypes: [],
            isTrending: false,
            keyWord: '',
            valueDistance: 0.0)));

  void clear() {
    emit(ListVoucherData(state.data.copyWith(searchs: [])));
    emit(ListVoucherData(state.data.copyWith(search: 'NORMAL', searchs: [])));
  }

  void getListSearch(String search) async {
    try {
      emit(ListVoucherData(state.data.copyWith(search: 'SEARCH')));
      String categoryID = '';
      String isTrending = state.data.isTrending ? '1' : '0';
      String foodTypeIds = '';
      String distance = state.data.valueDistance == 0
          ? null
          : state.data.valueDistance.toString();
      state.data.categoryId.forEach((category) {
        categoryID += '$category,';
      });

      state.data.foodTypeId.forEach((voucherType) {
        foodTypeIds += '$voucherType,';
      });

      emit(ListKeyWordData(state.data.copyWith(keyWord: search)));

      FoodDatasResponse response = await dataRepository.searchVoucher(
        categoryID: categoryID,
        isTrending: isTrending,
        foodTypeIds: foodTypeIds,
        distance: distance,
        keyword: search,
      );

      if (response != null) {
        if (response.data.isNotEmpty) {
          emit(ListVoucherData(state.data.copyWith(searchs: response.data)));
          emit(ListVoucherData(state.data.copyWith(search: 'OK')));
        } else {
          emit(ListVoucherData(state.data.copyWith(searchs: [])));
          emit(ListVoucherData(state.data.copyWith(search: 'ZERO_RESULTS')));
        }
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void getListSearchCategory(String search, String categoryKeyID) async {
    try {
      emit(ListVoucherData(state.data.copyWith(search: 'SEARCH')));

      String isTrending = state.data.isTrending ? '1' : '0';
      String foodTypeIds = '';

      //state.data.categoryId.add(categoryKeyID);

      state.data.foodTypeId.forEach((voucherType) {
        foodTypeIds += '$voucherType,';
      });

      emit(ListKeyWordData(state.data.copyWith(keyWord: search)));

      FoodDatasResponse response = await dataRepository.searchVoucher(
        categoryID: categoryKeyID,
        isTrending: isTrending,
        foodTypeIds: foodTypeIds,
        keyword: search,
      );

      if (response != null) {
        if (response.data.isNotEmpty) {
          emit(ListVoucherCategoryData(
              state.data.copyWith(searchs: response.data)));
          emit(ListVoucherCategoryData(state.data.copyWith(search: 'OK')));
        } else {
          emit(ListVoucherCategoryData(state.data.copyWith(searchs: [])));
          emit(ListVoucherCategoryData(
              state.data.copyWith(search: 'ZERO_RESULTS')));
        }
      }
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }

  void getCategories(String categoryID) async {
    try {
      CategoryResponse categoryResponse = await dataRepository.getCategories();
      List<String> listCategories = [...state.data.categoryId];
      listCategories.add(categoryID);
      emit(ListCategoryData(state.data.copyWith(
          categorys: categoryResponse.data, categoryId: listCategories)));
    } catch (e) {
      print(e);
    }
  }

  void getVouchers() async {
    try {
      VoucherTypeResponse voucherTypeResponse =
          await dataRepository.getVoucherType();

      List<String> listVouchers = [...state.data.foodTypeId];
      voucherTypeResponse.data.forEach((voucher) {
        listVouchers.add(voucher.id.toString());
      });

      emit(ListVoucherTyeData(state.data.copyWith(
          voucherTypes: voucherTypeResponse.data, foodTypeId: listVouchers)));
    } catch (e) {
      print(e);
    }
  }

  void updateCategory(bool isValue, int categoryID) async {
    try {
      List<String> listCategories = [...state.data.categoryId];
      isValue
          ? listCategories.add(categoryID.toString())
          : listCategories.remove(categoryID.toString());
      emit(ListCategoryData(state.data.copyWith(categoryId: listCategories)));
    } catch (e) {
      print(e);
    }
  }

  void updateVoucherTypes(bool isValue, int voucherTypesID) async {
    try {
      List<String> listVoucherTypes = [...state.data.foodTypeId];
      isValue
          ? listVoucherTypes.add(voucherTypesID.toString())
          : listVoucherTypes.remove(voucherTypesID.toString());
      emit(ListCategoryData(state.data.copyWith(foodTypeId: listVoucherTypes)));
    } catch (e) {
      print(e);
    }
  }

  void updateTrending(bool isTrending) async {
    try {
      emit(ListCategoryData(state.data.copyWith(isTrending: isTrending)));
    } catch (e) {
      print(e);
    }
  }

  void updateValueDistance(double valueDistance) async {
    try {
      emit(ListValueDistanceData(
          state.data.copyWith(valueDistance: valueDistance)));
    } catch (e) {
      print(e);
    }
  }
}
