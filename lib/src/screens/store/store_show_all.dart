import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/screens/sale/widgets/app_bar_sale_widget.dart';
import 'package:vipay/src/screens/sale/widgets/item_list_sale_widget.dart';
import 'package:vipay/src/screens/store/cubit/store_show_all_cubit.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/store_show_all_shimmer.dart';

class StoreShowAll extends CubitWidget<StoreShowAllCubit, StoreShowAllState> {
  static BlocProvider<StoreShowAllCubit> provider() {
    return BlocProvider<StoreShowAllCubit>(
      create: (_) => StoreShowAllCubit(),
      child: StoreShowAll(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getAllStore();
  }

  @override
  Widget builder(BuildContext context, StoreShowAllState state) {
    final Size _size = MediaQuery.of(context).size;
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
      body: state.data.isLoading
          ? ShowAllStoreShimmer()
          : SizedBox.expand(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.data.topWeekResponse?.data?.length ?? 0,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      itemBuilder: (context, index) {
                        final _item = state.data.topWeekResponse.data[index];
                        return ItemListSaleWidget(
                          heroTag: 'StoreShowAll${_item.hashCode}',
                          onPress: () {
                            navigator.pushNamed(RouteGenerator.storeScreen,
                                arguments: {
                                  'restaurant': _item,
                                  'heroTag': 'StoreShowAll${_item.hashCode}'
                                });
                          },
                          urlImg:
                              (_item.media != null && _item.media.isNotEmpty)
                                  ? _item.media?.first?.thumb ?? ' '
                                  : ' ',
                          size: _size,
                          titleText: _item.name ?? '',
                          information: bloc.handleInformation(
                              _item != null ? _item.information ?? ' ' : ' '),
                          description:
                              Helper.skipHtml(_item.description ?? ' '),
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
