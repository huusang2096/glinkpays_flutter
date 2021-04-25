import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/TransactionResponse.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/screens/wallet/widget/item_transaction_widget.dart';

class WalletShowAllTransactions extends StatelessWidget {
  final List<TransactionModel> listData;

  const WalletShowAllTransactions({Key key, this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: AppBarTransferSelectUserWidget(
          titleText: 'show_more'.tr,
          onPressIcon: () {
            navigator.pop();
          },
        ),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final item = listData[index];
                      return TransactionItemWidget(
                        item: item,
                        onSelect: (transactionModel) {
                          navigator.pushNamed(
                              RouteGenerator.walletShowDetailTransaction,
                              arguments: {'idTransaction': item.id});
                        },
                      );
                    },
                    itemCount: listData.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
