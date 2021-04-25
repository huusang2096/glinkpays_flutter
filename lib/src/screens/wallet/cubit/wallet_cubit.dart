import 'package:charts_common/common.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart' as material;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/models/TransactionResponse.dart';
import 'package:vipay/src/models/chart_gas_response.dart';
import 'package:vipay/src/models/exchange_money/exchange_money_complete_request.dart';
import 'package:vipay/src/models/exchange_money/exchange_money_complete_response.dart';
import 'package:vipay/src/models/exchange_money/get_currencies_exchange_rate_response.dart';
import 'package:vipay/src/models/pending_wallet_response.dart';
import 'package:vipay/src/models/user.dart';

part 'wallet_cubit.freezed.dart';

part 'wallet_state.dart';

class WalletCubit extends BaseCubit<WalletState> {
  WalletCubit() : super(Initial(WalletData()));

  @override
  dynamic initData() {
    getDataChart();
    getCurrencyRate();
    return super.initData();
  }

  String handleRateUsdGas() {
    String result = '';
    if (state.data.getCurrenciesExchangeRateResponse.data.isNullOrBlank) {
      return result;
    }

    double rateUSD = 0.0;
    double rateGAS = 0.0;
    if (state.data.getCurrenciesExchangeRateResponse.data.isNotEmpty) {
      for (var item in state.data.getCurrenciesExchangeRateResponse.data) {
        if (item.code == 'USD') {
          rateUSD = item?.rate ?? 0.0;
        }
        if (item.code == 'GAS') {
          rateGAS = item?.rate ?? 0.0;
        }
      }
    }
    result = '${(rateGAS / rateUSD).toPrecision(2)}';
    return result;
  }

  void getCurrencyRate() async {
    try {
      final response = await dataRepository.getCurrenciesExchangeRate();
      if (response.success) {
        final exchangeRate =
            1 / response.data.firstWhere((element) => element.id == 4).rate;
        emit(GetAvailableResponseUser(state.data.copyWith(
            getCurrenciesExchangeRateResponse: response,
            exchangeRate: exchangeRate.toPrecision(2))));
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  List<Series<ChartColumn, String>> fakeDataChart() {
    final dateNow = DateTime.now();
    final List<ChartColumn> myData = [];
    final dateFormat = DateFormat.MMM();
    final int color1 = 0xff29B0B4;
    final int color2 = 0xff87D65A;
    final List<charts.Series<ChartColumn, String>> _seriesBarData =
        List<charts.Series<ChartColumn, String>>();
    for (var i = 7; i > 0; i--) {
      myData.add(ChartColumn(
          date: dateNow.add(Duration(days: -i)),
          colorColumn: i % 2 == 0 ? color1 : color2,
          formatDate:
              '${dateFormat.format(dateNow.add(Duration(days: -i)))} ${dateNow.add(Duration(days: -i)).day}',
          rate: 0.0));
    }
    _seriesBarData.add(
      charts.Series(
        domainFn: (ChartColumn value, _) => value.formatDate,
        measureFn: (ChartColumn value, _) => value.rate,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        colorFn: (ChartColumn value, _) =>
            charts.ColorUtil.fromDartColor(material.Color(value.colorColumn)),
        id: 'Chart',
        data: myData,
      ),
    );
    return _seriesBarData;
  }

  void getDataChart() async {
    final dateFormat = DateFormat.MMM();
    final int color1 = 0xff29B0B4;
    final int color2 = 0xff87D65A;
    List<charts.Series<ChartColumn, String>> _seriesBarData =
        List<charts.Series<ChartColumn, String>>();
    final List<ChartColumn> myData = [];
    try {
      final response = await dataRepository.getDataChartGas();
      if (response.success) {
        for (var i = 0;
            i < (response.data.length <= 7 ? response.data.length : 7);
            i++) {
          myData.add(ChartColumn(
              date: response.data[i].date,
              colorColumn: i % 2 == 0 ? color1 : color2,
              formatDate:
                  '${dateFormat.format(response.data[i].date)} ${response.data[i].date.day}',
              rate: response.data[i].rate));
        }
        _seriesBarData.add(
          charts.Series(
              domainFn: (ChartColumn value, _) => value.formatDate,
              measureFn: (ChartColumn value, _) => value.rate,
              fillPatternFn: (_, __) => charts.FillPatternType.solid,
              colorFn: (ChartColumn value, _) => charts.ColorUtil.fromDartColor(
                  material.Color(value.colorColumn)),
              id: 'Chart',
              data: myData,
              displayName: 'Chart'),
        );
        emit(GetTransactionGasResponseUser(
            state.data.copyWith(barData: _seriesBarData)));
      } else {
        _seriesBarData = fakeDataChart();
        emit(GetTransactionGasResponseUser(
            state.data.copyWith(barData: _seriesBarData)));
      }
    } catch (error) {
      _seriesBarData = fakeDataChart();
      emit(GetTransactionGasResponseUser(
          state.data.copyWith(barData: _seriesBarData)));
      handleAppError(error);
    }
  }

  void getUserAvailable() async {
    try {
      AvailableResponse availableResponse =
          await dataRepository.getUserAvailable();
      PendingWalletResponse pendingWallet =
          await dataRepository.getListPendingWallet();
      emit(GetAvailableResponseUser(state.data.copyWith(
          availableResponse: availableResponse, pendingWallet: pendingWallet)));
      double usd = 0;
      double gas = 0;
      availableResponse.data.wallets.forEach((wallet) {
        if (wallet.currCode == 'USD') {
          usd += double.parse(wallet.balance);
        } else if (wallet.currCode == 'GAS') {
          gas += double.parse(wallet.balance);
        }
      });

      emit(GetUSD(state.data.copyWith(usd: usd.toPrecision(2))));
      emit(GetGAS(state.data.copyWith(gas: gas.toPrecision(2))));
    } catch (e) {
      logger.e(e);
    }
  }

  void getUserProfile() async {
    try {
      UserResponse userResponse = await dataRepository.getUserProfile();
      emit(GetUserProfileResponseUser(
          state.data.copyWith(userProfile: userResponse)));
    } catch (e) {
      logger.e(e);
    }
  }

  void getTransaction() async {
    try {
      TransactionResponse transactionResponse =
          await dataRepository.getTransactions();
      List<TransactionModel> transactionUsd = transactionResponse.data
          .where((transactionModel) => transactionModel.currCode == 'USD')
          .toList();

      List<TransactionModel> transactionGas = transactionResponse.data
          .where((transactionModel) => transactionModel.currCode == 'GAS')
          .toList();
      emit(GetTransactionUsdResponseUser(state.data.copyWith(
          transactionUsd: transactionUsd, transactionGas: transactionGas)));
    } catch (e) {
      logger.e(e);
    }
  }

  void changeSelectTab(int index) {
    emit(ChangeSelectTab(state.data.copyWith(selectTab: index)));
  }

  void buyGas(
    double amount,
  ) async {
    if (amount.isEqual(0)) {
      return;
    }

    final isConfirm = await dialogService.showConfirmationDialog(
        cancelTitle: 'cancel'.tr,
        confirmationTitle: 'confirm'.tr,
        description:
            'do_you_agree_to_perform_transactions_agree_to_perform_transactions'
                .tr,
        title: appConfig.appName);
    if (isConfirm.confirmed) {
      try {
        ExchangeMoneyCompleteRequest request = ExchangeMoneyCompleteRequest();
        request.fromWalletCurrencyId = 1; //USD
        request.toWalletCurrencyId = 4; //GAS
        request.totalFees = 0;
        request.toWalletExchangeRate = state
            .data.getCurrenciesExchangeRateResponse.data
            .firstWhere((element) => element.id == 4)
            .rate;
        request.fromWalletAmount = amount;
        request.toWalletAmount = amount;

        emit(BuyGasState(state.data.copyWith(isLoading: true)));
        final response = await dataRepository.exchangeMoney(request);
        snackbarService.showSnackbar(message: response.message);
        emit(BuyGasState(state.data.copyWith(buyGasReponse: response)));
      } catch (e) {
        handleAppError(e);
        logger.e(e);
      }
      emit(BuyGasState(state.data.copyWith(isLoading: false)));
      getUserAvailable();
      getTransaction();
    }
  }

  void convertValue(double amount) async {
    try {
      final formatCurr = NumberFormat('###,###', 'en');

      emit(ConvertValue(state.data.copyWith(isConvertLoading: true)));

      final listExchangeRate = state.data.getCurrenciesExchangeRateResponse;
      if (listExchangeRate == null) {
        await dialogService.showDialog(
            title: appConfig.appName, description: 'server_error'.tr);
        return;
      }
      final gasRate =
          listExchangeRate.data.firstWhere((element) => element.id == 4).rate;
      String currencyCode = 'GAS';
      double valueConvert = amount / gasRate;
      emit(ConvertValue(state.data.copyWith(
          valueConvert:
              '${formatCurr.format(valueConvert.toPrecision(2))} ${currencyCode}')));
    } catch (e) {
      handleAppError(e);
    }
    emit(ConvertValue(state.data.copyWith(isConvertLoading: false)));
  }

  bool checkBalance(double amount) {
    final usdBalance = double.parse(state.data.availableResponse.data.wallets
        .firstWhere((element) => element.currId == 1)
        .balance);
    if (amount > usdBalance) {
      return true;
    } else {
      return false;
    }
  }
}
