import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/restaurant.dart';
import 'package:vipay/src/screens/sale/widgets/item_list_sale_widget.dart';
import 'package:vipay/src/screens/store/search/bloc/search_cubit.dart';
import 'package:vipay/src/shimmer/store_simmer.dart';

class StoreSearchWidget extends StatelessWidget {
  StoreSearchWidget();

  @override
  Widget build(BuildContext context) {
    // Hots news
    final Size _size = MediaQuery.of(context).size;
    List<Restaurant> restaurants =
        context.watch<SearchCubit>().state.data.searchs;

    String handleInformation(String information) {
      final handleString = information.replaceFirst('PM</p>', '\n');
      final result = Helper.skipHtml(handleString);
      return result;
    }

    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: restaurants.length == 0
              ? StoreShimmer()
              : Column(
                  children: [
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: restaurants.length,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemBuilder: (context, index) {
                        Restaurant _item = restaurants[index];
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
                                  ? _item.media.first.thumb ?? ' '
                                  : ' ',
                          size: _size,
                          titleText: _item.name ?? '',
                          information: handleInformation(
                              _item != null ? _item.information ?? ' ' : ' '),
                          description:
                              Helper.skipHtml(_item.description ?? ' '),
                        );
                      },
                    ),
                  ],
                ),
        ));
  }
}
