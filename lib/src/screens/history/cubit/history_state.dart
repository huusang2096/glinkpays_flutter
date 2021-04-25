part of 'history_cubit.dart';

@freezed
abstract class HistoryStateData with _$HistoryStateData {
  const factory HistoryStateData(
      {HistoryResponse historyResponse,
      List<History> listHistory,
      List<String> listTransactionType,
      String stringType,
      bool isLoading}) = Data;
}

//Union
@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState.init(Data data) = Initial;
  const factory HistoryState.loading(Data data) = Loading;
  const factory HistoryState.listHistory(Data data) = ListHistoryData;
  const factory HistoryState.listTransactionType(Data data) =
      ListTransactionType;
  const factory HistoryState.filterTransactionType(Data data) =
      FilterTransactionTypeData;
  const factory HistoryState.refreshHistoryPage(Data data) =
      RefreshHistoryPageData;
}
