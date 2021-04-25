import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/history/history_response.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

class HistoryCubit extends BaseCubit<HistoryState> {
  HistoryCubit()
      : super(HistoryState.init(Data(
          historyResponse: null,
          listHistory: [],
          listTransactionType: [],
          isLoading: false,
        )));

  bool checkLogin() {
    final check = appPref.token;
    return check.isEmpty ? false : true;
  }

  void getHistory() async {
    try {
      if (appPref.token.isEmpty) {
        return;
      }
      emit(Loading(state.data.copyWith(isLoading: true)));
      HistoryResponse response = await dataRepository.getHistory();
      emit(ListHistoryData(state.data
          .copyWith(historyResponse: response, listHistory: response.data)));
    } catch (e) {
      handleAppError(e);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }

  void getTransactionType(HistoryResponse response) async {
    try {
      List<String> listTransactionType = [...state.data.listTransactionType];
      response.data.forEach((element) {
        listTransactionType.add(element.transactionType);
      });
      listTransactionType.add('all');
      //remove duplicate data
      final newList = LinkedHashSet<String>.from(listTransactionType).toList();
      emit(ListTransactionType(state.data
          .copyWith(listHistory: response.data, listTransactionType: newList)));
    } catch (e) {
      handleAppError(e);
    }
  }

  void filterTransactionType({String value, List<History> listHistory}) async {
    List<History> newList;
    if (value.isNotEmpty) {
      if (value == 'all') {
        newList = state.data.historyResponse.data;
      } else {
        newList = state.data.historyResponse.data
            .where((element) => element.transactionType == value)
            .toList();
      }

      emit(FilterTransactionTypeData(
          state.data.copyWith(stringType: value, listHistory: newList)));
    }
  }

  void refreshHistoryPage() {
    emit(RefreshHistoryPageData(state.data.copyWith(historyResponse: null)));
  }
}
