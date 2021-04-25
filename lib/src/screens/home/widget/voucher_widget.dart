import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';
import 'package:vipay/src/screens/home/widget/voucher_item_widget.dart';
import 'package:vipay/src/shimmer/home_shimmer.dart';

class VoucherWidget extends StatelessWidget {
  HomeState state;

  VoucherWidget();

  @override
  Widget build(BuildContext context) {
    state = context.bloc<HomeCubit>().state;

    return _buildCategories(context: context);
  }

  Widget _buildCategories({context}) {
    return Container(
      height: 160,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                SvgPicture.asset('assets/images/vouchure_icon.svg'),
                SizedBox(width: 10),
                Text(
                  allTranslations.text('vouchers').toUpperCase(),
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF87D65A),
                      fontWeight: FontWeight.w700),
                ),
              ]),
              InkWell(
                onTap: () {
                  navigator.pushNamed(RouteGenerator.searchVoucher);
                },
                child: SizedBox(
                  child: Row(children: [
                    Text(
                      allTranslations.text('show_more'),
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF87D65A),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 5),
                    SvgPicture.asset('assets/images/readmore_icon.svg'),
                  ]),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          state.vouchers != null
              ? Expanded(
                  child: ListView.builder(
                    itemCount: state.vouchers.data.length > 5
                        ? 5
                        : state.vouchers.data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      double _marginLeft = 0;
                      (index == 0) ? _marginLeft = 0 : _marginLeft = 10;
                      return VoucherItemWidget(
                        marginLeft: _marginLeft,
                        heroTag:
                            '${state.vouchers.data[index].hashCode} voucherSaleTag',
                        voucher: state.vouchers.data.elementAt(index),
                      );
                    },
                  ),
                )
              : Expanded(child: HomeShimmer(91, 161)),
        ],
      ),
    );
  }
}
