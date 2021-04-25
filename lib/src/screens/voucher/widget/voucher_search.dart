import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/screens/sale/widgets/item_list_sale_widget.dart';
import 'package:vipay/src/screens/voucher/cubit/search_voucher_cubit.dart';
import 'package:vipay/src/shimmer/store_simmer.dart';

class VoucherSearchWidget extends StatelessWidget {
  VoucherSearchWidget();

  @override
  Widget build(BuildContext context) {
    // Hots news
    final Size _size = MediaQuery.of(context).size;
    List<FoodData> vouchers =
        context.watch<SearchVoucherCubit>().state.data.searchs;

    String handleInformation(String information) {
      final handleString = information.replaceFirst('PM</p>', '\n');
      final result = Helper.skipHtml(handleString);
      return result;
    }

    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: vouchers.isEmpty
              ? StoreShimmer()
              : Column(
                  children: [
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: vouchers.length,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemBuilder: (context, index) {
                        final item = vouchers[index];
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
                          size: _size,
                          titleText: item.name ?? '',
                          information: handleInformation(item.restaurant != null
                              ? item.restaurant.information ?? ' '
                              : ' '),
                          description: Helper.skipHtml(item.description ?? ' '),
                          discount: item?.discountPrice,
                        );
                      },
                    ),
                  ],
                ),
        ));
  }
}
