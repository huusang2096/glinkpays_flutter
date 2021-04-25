import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';
import 'package:vipay/src/screens/voucher/cubit/search_voucher_state.dart';

class SearchVoucherCubit extends BaseCubit<SearchVoucherState> {
  SearchVoucherCubit()
      : super(Initial(Data(
            search: "NORMAL",
            searchs: [],
            categoryId: [],
            categorys: [],
            foodTypeId: [],
            voucherTypes: [],
            isTrending: false,
            keyWord: "",
            valueDistance: 0.0)));

  clear() {
    emit(ListVoucherData(state.data.copyWith(searchs: [])));
    emit(ListVoucherData(state.data.copyWith(search: "NORMAL", searchs: [])));
  }

  getAllVoucher() async {
    try {
      emit(ListVoucherData(state.data.copyWith(search: "SEARCH")));
      final FoodDatasResponse response = await dataRepository.getAllVoucher();
      if (response != null) {
        if (response.data != null && response.data.isNotEmpty) {
          emit(ListVoucherData(state.data.copyWith(searchs: response.data)));
          emit(ListVoucherData(state.data.copyWith(search: "OK")));
        } else {
          emit(ListVoucherData(state.data.copyWith(searchs: [])));
          emit(ListVoucherData(state.data.copyWith(search: "ZERO_RESULTS")));
        }
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  getListSearch(String search) async {
    try {
      emit(ListVoucherData(state.data.copyWith(search: "SEARCH")));
      String categoryID = "";
      String isTrending = state.data.isTrending ? "1" : "0";
      String foodTypeIds = "";
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
          keyword: search,
          distance: distance);

      if (response != null) {
        if (response.data != null && response.data.length > 0) {
          emit(ListVoucherData(state.data.copyWith(searchs: response.data)));
          emit(ListVoucherData(state.data.copyWith(search: "OK")));
        } else {
          emit(ListVoucherData(state.data.copyWith(searchs: [])));
          emit(ListVoucherData(state.data.copyWith(search: "ZERO_RESULTS")));
        }
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  getCategories() async {
    try {
      CategoryResponse categoryResponse = await dataRepository.getCategories();

      List<String> listCategorys = [...state.data.categoryId];
      categoryResponse.data.forEach((element) {
        listCategorys.add(element.id.toString());
      });

      emit(ListCategoryData(state.data.copyWith(
          categorys: categoryResponse.data, categoryId: listCategorys)));
    } catch (e) {
      print(e);
    }
  }

  getVouchers() async {
    try {
      VoucherTypeResponse voucherResponse =
          await dataRepository.getVoucherType();
      List<String> listVoucher = [...state.data.foodTypeId];
      voucherResponse.data.forEach((element) {
        listVoucher.add(element.id.toString());
      });
      emit(ListVoucherTyeData(state.data.copyWith(
          voucherTypes: voucherResponse.data, foodTypeId: listVoucher)));
    } catch (e) {
      print(e);
    }
  }

  updateCategory(bool isValue, int categoryID) async {
    try {
      List<String> listCategorys = [...state.data.categoryId];
      isValue
          ? listCategorys.add(categoryID.toString())
          : listCategorys.remove(categoryID.toString());
      emit(ListCategoryData(state.data.copyWith(categoryId: listCategorys)));
    } catch (e) {
      print(e);
    }
  }

  updatevoucherTypes(bool isValue, int voucherTypesID) async {
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

  updateTrending(bool isTrending) async {
    try {
      emit(ListCategoryData(state.data.copyWith(isTrending: isTrending)));
    } catch (e) {
      print(e);
    }
  }

  updateValueDistance(double valueDistance) async {
    try {
      emit(ListValueDistanceData(
          state.data.copyWith(valueDistance: valueDistance)));
    } catch (e) {
      print(e);
    }
  }
}
