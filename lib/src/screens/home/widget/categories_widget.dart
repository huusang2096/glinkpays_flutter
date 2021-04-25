import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';
import 'package:vipay/src/screens/home/widget/categories_item_widget.dart';
import 'package:vipay/src/shimmer/home_shimmer.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget();

  @override
  Widget build(BuildContext context) {
    return _buildCategories(context: context);
  }

  Widget _buildCategories({BuildContext context}) {
    final state = context.watch<HomeCubit>().state;
    return Container(
      padding: EdgeInsets.all(16),
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
          state.categoryResponse != null
              ? Container(
                  height: 90,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.categoryResponse.data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.1),
                    itemBuilder: (context, index) {
                      return CategoriesItemWidget(
                          category:
                              state.categoryResponse.data.elementAt(index));
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
