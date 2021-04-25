import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/store/store_show_all_response.dart';

part 'store_show_all_state.dart';

part 'store_show_all_cubit.freezed.dart';

class StoreShowAllCubit extends BaseCubit<StoreShowAllState> {
  StoreShowAllCubit() : super(Initial(StoreShowAllData()));

  String handleInformation(String information) {
    final handleString = information.replaceFirst('PM</p>', '\n');
    final result = Helper.skipHtml(handleString);
    return result;
  }

  void getAllStore() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final StoreShowAllResponse storeResponse =
          await dataRepository.getAllStore(appPref.token);
      emit(Loaded(state.data.copyWith(topWeekResponse: storeResponse)));
      emit(Loading(state.data.copyWith(isLoading: false)));
    } catch (e) {
      handleAppError(e);
    }
  }
}
