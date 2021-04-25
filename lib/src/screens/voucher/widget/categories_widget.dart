import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/home/widget/categories_item_widget.dart';
import 'package:vipay/src/screens/voucher/cubit/voucher_cubit.dart';
import 'package:vipay/src/shimmer/home_shimmer.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget();

  @override
  Widget build(BuildContext context) {
    return _buildCategories(context: context);
  }

  Widget _buildCategories({BuildContext context}) {
    final state = context.watch<VoucherCubit>().state;
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(children: [
            SvgPicture.asset("assets/images/categories.svg"),
            SizedBox(width: 10),
            Text(
              allTranslations.text('categories').toUpperCase(),
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF87D65A),
                  fontWeight: FontWeight.w700),
            ),
          ]),
          SizedBox(height: 16),
          state.categories != null
              ? Container(
                  height: 90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemExtent: 80,
                    itemCount: state.categories.length,
                    itemBuilder: (context, index) {
                      return CategoriesItemWidget(
                          category: state.categories.elementAt(index));
                    },
                  ))
              : Container(
                  height: 70, child: Center(child: HomeShimmer(60, 60))),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
