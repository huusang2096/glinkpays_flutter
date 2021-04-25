import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/models/pending_wallet_response.dart';
import 'package:vipay/src/screens/wallet/cubit/wallet_cubit.dart';
import 'package:vipay/src/screens/wallet/widget/item_transaction_widget.dart';

import 'item_peding_wallet_widget.dart';

class UsdTabWidget extends StatelessWidget {
  final WalletState state;
  final formatCurr = NumberFormat('###,###', 'en');
  UsdTabWidget(this.state);

  @override
  Widget build(BuildContext context) {
    return _buildBody(context: context);
  }

  Widget _buildBody({context}) {
    List<PendingWallet> listUsdPending;
    if (state.data.pendingWallet == null) {
      listUsdPending = null;
    } else {
      listUsdPending = state.data.pendingWallet.data
          .where((element) => element.currency == 'USD')
          .toList();
    }
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                                    ? ''
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
                      Container(
                        width: 65,
                        height: 65,
                        child: QrImage(
                          data: state.data.userProfile == null
                              ? ""
                              : state.data.userProfile.data.apiToken,
                        ),
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
                        Text(formatCurr.format(state.data.usd).toString(),
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF3E3E3E),
                                fontSize: 25,
                                letterSpacing: 1.0)),
                        SizedBox(
                          width: 8,
                        ),
                        Text('usd'.tr,
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
                  )
                ],
              ),
            ),
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
            listUsdPending == null
                ? SizedBox.shrink()
                : Container(
                    color: Colors.white,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return PendingWalletItemWidget(
                            item: listUsdPending[index],
                          );
                        },
                        // ignore: null_aware_before_operator
                        itemCount: listUsdPending.length)),
            SizedBox(height: 5),
            // _apiIntegrateWidget(context),
            // SizedBox(height: 5),

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
                        if (state.data.transactionUsd != null) {
                          navigator.pushNamed(
                              RouteGenerator.walletShowAllTransactions,
                              arguments: {'data': state.data.transactionUsd});
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
              child: state.data.transactionUsd.isNullOrBlank
                  ? SizedBox.shrink()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return TransactionItemWidget(
                          item: state.data.transactionUsd[index],
                          onSelect: (transactionModel) {
                            navigator.pushNamed(
                                RouteGenerator.walletShowDetailTransaction,
                                arguments: {
                                  'idTransaction': transactionModel.id
                                });
                          },
                        );
                      },
                      itemCount: state.data.transactionUsd.length > 5
                          ? 5
                          : state.data.transactionUsd.length),
            )
          ],
        ),
      ),
    );
  }

  Container _apiIntegrateWidget(context) {
    return Container(
      height: 180,
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFF29B0B4), Color(0xFF28ABAE)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('API',
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          SizedBox(height: 6),
          Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit',
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.white)),
          SizedBox(height: 6),
          Container(
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                decoration: InputDecoration(
                    hintText: 'input_token'.tr,
                    hintStyle: TextStyle(
                        color: Color(0xFFB3B4B4),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                    border: InputBorder.none),
              )),
          SizedBox(height: 6),
          FlatButton(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                    colors: [Color(0xFFAEDE48), Color(0xFF87D65A)]),
              ),
              child: Center(
                child: Text(
                  'active'.tr.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
