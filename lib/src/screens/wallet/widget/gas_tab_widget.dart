import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/screens/wallet/cubit/wallet_cubit.dart';
import 'package:vipay/src/screens/wallet/widget/item_transaction_widget.dart';
import 'package:vipay/src/models/pending_wallet_response.dart';

import 'item_peding_wallet_widget.dart';

class GasTabWidget extends StatelessWidget {
  final WalletState state;
  final formatCurr = NumberFormat('###,###', 'en');

  GasTabWidget(this.state);

  @override
  Widget build(BuildContext context) {
    return _buildBody(context: context);
  }

  Widget _buildBody({BuildContext context}) {
    List<PendingWallet> listGasPending;
    if (state.data.pendingWallet == null) {
      listGasPending = null;
    } else {
      listGasPending = state.data.pendingWallet.data
          .where((element) => element.currency == 'GAS')
          .toList();
    }

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  right: 20.0, left: 20, top: 10, bottom: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(300),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Container(
                              width: 60,
                              height: 60,
                              child: CachedNetworkImage(
                                imageUrl:
                                    state.data.userProfile?.data?.image ?? '',
                                placeholder: (context, url) => Image.asset(
                                    'assets/images/if_3_avatar_2754579.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                                state.data.userProfile == null
                                    ? ""
                                    : state.data.userProfile.data.name
                                        .toUpperCase(),
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFF239EA1),
                                    fontSize: 20,
                                    letterSpacing: 1.0)),
                            Text(
                                state.data.userProfile == null
                                    ? ""
                                    : state.data.userProfile.data.email,
                                textAlign: TextAlign.left,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFBDBDBD))),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      QrImage(
                        gapless: false,
                        size: 65.0,
                        data: state.data.userProfile == null
                            ? ""
                            : state.data.userProfile.data.apiToken,
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Text('balance_in_wallet'.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color(0xFFB3B4B4),
                          fontSize: 16,
                          letterSpacing: 1.0)),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(formatCurr.format(state.data.gas).toString(),
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3E3E3E),
                                fontSize: 25,
                                letterSpacing: 1.0)),
                        Text('gas'.tr,
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF87D65A),
                                fontSize: 25,
                                letterSpacing: 1.0)),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Color(0xFFF2F2F2),
                  ),
                  SizedBox(height: 14),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('rate_name'.tr,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFB3B4B4),
                                fontSize: 16,
                                letterSpacing: 1.0)),
                        Row(
                          children: [
                            Text(
                                state.data.getCurrenciesExchangeRateResponse ==
                                        null
                                    ? ''
                                    : context
                                        .watch<WalletCubit>()
                                        .handleRateUsdGas(),
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 18,
                                    letterSpacing: 1.0)),
                            SizedBox(
                              width: 5,
                            ),
                            Text('rate'.tr,
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 18,
                                    letterSpacing: 1.0)),
                          ],
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            state.data.barData.isEmpty
                ? Container(
                    height: 250,
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    width: double.infinity,
                  )
                : Container(
                    height: 250,
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    width: double.infinity,
                    child: charts.BarChart(
                      state.data.barData,
                      animate: true,
                      animationDuration: Duration(seconds: 3),
                    ),
                  ),
            SizedBox(height: 5),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      'pending'.tr.toUpperCase(),
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF87D65A),
                          fontWeight: FontWeight.w700),
                    ),
                  ]),
                ],
              ),
            ),
            listGasPending == null
                ? SizedBox.shrink()
                : Container(
                    color: Colors.white,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return PendingWalletItemWidget(
                            item: listGasPending[index],
                          );
                        },
                        // ignore: null_aware_before_operator
                        itemCount: listGasPending.length)),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      'action'.tr.toUpperCase(),
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF87D65A),
                          fontWeight: FontWeight.w700),
                    ),
                  ]),
                  Row(children: [
                    GestureDetector(
                      onTap: () {
                        if (state.data.transactionGas != null) {
                          navigator.pushNamed(
                              RouteGenerator.walletShowAllTransactions,
                              arguments: {'data': state.data.transactionGas});
                        }
                      },
                      child: Text(
                        'show_more'.tr,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF87D65A),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(width: 5),
                    SvgPicture.asset("assets/images/readmore_icon.svg"),
                  ]),
                ],
              ),
            ),
            Container(
                color: Colors.white,
                child: !state.data.transactionGas.isNullOrBlank
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return TransactionItemWidget(
                            item: state.data.transactionGas[index],
                            onSelect: (transactionModel) {
                              navigator.pushNamed(
                                  RouteGenerator.walletShowDetailTransaction,
                                  arguments: {
                                    'idTransaction': transactionModel.id
                                  });
                            },
                          );
                        },
                        itemCount: state.data.transactionGas.length > 5
                            ? 5
                            : state.data.transactionGas.length)
                    : SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}

class Sales {
  final int saleVal;
  final String saleYear;
  final int colorVal;

  Sales(this.saleVal, this.saleYear, this.colorVal);

  Sales.fromMap(Map<String, dynamic> map)
      : assert(map['saleVal'] != null),
        assert(map['saleYear'] != null),
        assert(map['colorVal'] != null),
        saleVal = map['saleVal'],
        colorVal = map['colorVal'],
        saleYear = map['saleYear'];

  @override
  String toString() => "Record<$saleVal:$saleYear:$colorVal>";
}
