import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';
import 'package:vipay/src/screens/home/widget/hotdeal_item_widget.dart';
import 'package:vipay/src/shimmer/home_shimmer.dart';

class HotDealWidget extends StatelessWidget {
  HomeState state;

  HotDealWidget();

  @override
  Widget build(BuildContext context) {
    state = context.bloc<HomeCubit>().state;

    return _buildCategories(context: context);
  }

  Widget _buildCategories({context}) {
    return Container(
      height: 225,
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                SvgPicture.asset("assets/images/hotdeal.svg"),
                SizedBox(width: 10),
                Text(
                  allTranslations.text('hot_in_week').toUpperCase(),
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF87D65A),
                      fontWeight: FontWeight.w700),
                ),
              ]),
              GestureDetector(
                onTap: () {
                  if (state.topWeekResponse != null &&
                      state.topWeekResponse.data.isNotEmpty) {
                    navigator
                        .pushNamed(RouteGenerator.storeShowAll, arguments: {
                      'listFunctionNavigationBar': [
                        () {
                          navigator.pop();
                        },
                        () {
                          print('show more');
                        }
                      ],
                      'listTitleNavigationBar': ['top_week'.tr, 'show_more'.tr],
                    });
                  }
                },
                child: Row(children: [
                  Text(
                    allTranslations.text('show_more'),
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF87D65A),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset("assets/images/readmore_icon.svg"),
                ]),
              ),
            ],
          ),
          SizedBox(height: 10),
          state.topWeekResponse?.data != null
              ? Expanded(
                  child: ListView.builder(
                  itemCount: state.topWeekResponse.data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    double _marginLeft = 0;
                    (index == 0) ? _marginLeft = 0 : _marginLeft = 10;
                    return HotDealItemWidget(
                      heroTag:
                          '${state.topWeekResponse.data[index].hashCode} HotDealItemWidget',
                      marginLeft: _marginLeft,
                      food: state.topWeekResponse.data.elementAt(index),
                    );
                  },
                ))
              : Expanded(
                  child: HomeShimmer(165, 141),
                ),
        ],
      ),
    );
  }
}
