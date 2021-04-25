import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/wallet/cubit/wallet_cubit.dart';
import 'package:vipay/src/screens/wallet/widget/buy_tab_widget.dart';
import 'package:vipay/src/screens/wallet/widget/gas_tab_widget.dart';
import 'package:vipay/src/screens/wallet/widget/usd_tab_widget.dart';
import 'package:simplest/simplest.dart';

class MyWalletWidget extends CubitWidget<WalletCubit, WalletState> {
  static BlocProvider<WalletCubit> provider() {
    return BlocProvider(
      create: (_) => WalletCubit(),
      child: MyWalletWidget(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getUserAvailable();
    bloc.getUserProfile();
    bloc.getTransaction();
  }

  @override
  Widget builder(BuildContext context, WalletState state) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'wallets'.tr,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 44),
              child: DefaultTabController(
                initialIndex: state.data.selectTab,
                length: 3,
                child: Container(
                  color: colorGrey300,
                  height: 35,
                  child: TabBar(
                    onTap: (index) {
                      bloc.changeSelectTab(index);
                    },
                    indicator: BoxDecoration(color: colorWhite),
                    isScrollable: false,
                    indicatorWeight: 0.0,
                    tabs: [
                      buildTab(state, 'usd'.tr, 0),
                      buildTab(state, 'gas'.tr, 1),
                      buildTab(state, 'exchange_rate'.tr, 2),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: IndexedStack(
            children: [
              UsdTabWidget(state),
              GasTabWidget(state),
              BuyTabWidget()
            ],
            index: state.data.selectTab,
          ),
        ));
  }

  Tab buildTab(WalletState state, String titleTab, int index) {
    return Tab(
      child: Text(
        titleTab,
        style: TextStyle(
            color:
                state.data.selectTab == index ? Colors.black : Colors.black45),
      ),
    );
  }
}
