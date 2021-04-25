import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/screens/sale/cubit/sale_cubit.dart';
import 'package:vipay/src/screens/sale/widgets/app_bar_sale_widget.dart';
import 'package:vipay/src/screens/sale/widgets/item_list_sale_widget.dart';
import 'package:vipay/src/screens/sale/widgets/navigation_bar_widget.dart';


class SaleScreen extends CubitWidget<SaleCubit, SaleState> {
  final List<String> listTitleNavigationBar;
  final List<Function> listFunctionNavigationBar;

  SaleScreen(this.listTitleNavigationBar, this.listFunctionNavigationBar);

  static BlocProvider<SaleCubit> provider(
      {FoodDatasResponse vouchers,
      List<String> listTitleNavigationBar,
      List<Function> listFunctionNavigationBar}) {
    return BlocProvider(
        create: (context) => SaleCubit(vouchers),
        child: SaleScreen(listTitleNavigationBar, listFunctionNavigationBar));
  }

  @override
  Widget builder(BuildContext context, SaleState state) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorBackgroundScaffold,
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: AppBarSaleWidget(
          onPressIcon: () {
            navigator.pop();
          },
          titleText: 'show_more'.tr.toUpperCase(),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            NavigationBar(
              size: size,
              listTitle: listTitleNavigationBar,
              listFunction: listFunctionNavigationBar,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.vouchers.data.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                itemBuilder: (context, index) {
                  final item = state.vouchers.data[index];
                  return ItemListSaleWidget(
                    heroTag: 'saleTag${item.hashCode}',
                    onPress: () {
                      navigator.pushNamed(RouteGenerator.saleDetailScreen,
                          arguments: {
                            'heroTag': 'saleTag${item.hashCode}',
                            'voucher': item,
                            'listFunctionNavigationBar': [
                              () async {
                                navigator.pop();
                                await Future.delayed(
                                    Duration(milliseconds: 200), () {
                                  navigator.pop();
                                });
                              },
                              () {
                                navigator.pop();
                              },
                              () {}
                            ],
                            'listTitleNavigationBar': [
                              'vouchers'.tr,
                              'show_more'.tr,
                              item.name ?? ' '
                            ]
                          });
                    },
                    urlImg: (item.media != null && item.media.isNotEmpty)
                        ? item.media.first.thumb ?? ' '
                        : ' ',
                    size: size,
                    titleText: item.name ?? '',
                    information: bloc.handleInformation(item.restaurant != null
                        ? item.restaurant.information ?? ' '
                        : ' '),
                    description: Helper.skipHtml(item.description ?? ' '),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
