import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/screens/cart/widgets/cart_item.widget.dart';
import 'package:vipay/src/widgets/empty_account.dart';

import 'cubit/cart_cubit.dart';

class CartScreen extends CubitWidget<CartCubit, CartState> {
  AppPref appPref = locator<AppPref>();

  static BlocProvider<CartCubit> provider() {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: CartScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getCart();
  }

  @override
  void listener(BuildContext context, CartState state) {
    if (state is OrderVoucherState) {
      Navigator.of(context).pushNamed(RouteGenerator.myVoucherScreen);
    }
  }

  @override
  Widget builder(BuildContext context, CartState state) {
    return Scaffold(
      backgroundColor: greyBackground,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'cart'.tr.toUpperCase(),
            style: body1.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xff239EA1),
          leading: IconButton(
              onPressed: () {
                navigator.pop();
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ))),
      body: appPref.token.isEmpty
          ? EmptyAccount()
          : SafeArea(child: _buildBody(context, state)),
    );
  }

  Widget _buildBody(BuildContext context, CartState state) {
    bool isCartEmpty = (state.cartResponse?.data ?? []).isEmpty;

    if (state.isLoading) {
      return Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          height: 560,
          child: Center(
              child: SpinKitCircle(
            color: activeGreen,
          )));
    }

    if (isCartEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.empty_cart),
            SizedBox(
              height: 10,
            ),
            Text(
              'empty'.tr,
              style: body1,
            )
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
                itemCount: state.cartResponse.data.length,
                itemBuilder: (context, index) {
                  return Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    child: CartItemWidget(state.cartResponse.data[index]),
                    actions: [
                      InkWell(
                        onTap: () =>
                            bloc.deleteCart(state.cartResponse.data[index].id),
                        child: _buildbButtonDeleteCart(context),
                      ),
                    ],
                  );
                }),
          ),
          _buildBottomSheet(context, state)
        ],
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context, CartState state) {
    if (state.cartResponse == null || state.cartResponse.data.isNullOrBlank) {
      return SizedBox.shrink();
    }

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'total'.tr,
                      style: lightblueText,
                    ),
                    Text(
                        '${(context.watch<CartCubit>().totalCart() + double.parse(state.defaultTax))} GAS',
                        style: lightblueText),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('tax'.tr.trArgs(['']), style: lightblueText),
                  Text('${int.parse(state.defaultTax)} GAS',
                      style: lightblueText),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            state.isLoadingButton
                ? SpinKitCircle(
                    color: activeGreen,
                  )
                : FlatButton(
                    onPressed: () {
                      if (state.cartResponse.data.isNotEmpty &&
                          state.isLoading == false) {
                        bloc.orderVoucher(state.cartResponse.data);
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0XFF87D65A), Color(0XFFAEDE48)]),
                          borderRadius: BorderRadius.circular(10)),
                      width: 350,
                      height: 40,
                      child: Text(
                        "pay".tr,
                        style: body1.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ))
          ],
        ),
      ),
    );
  }

  Widget _buildbButtonDeleteCart(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      margin: const EdgeInsets.only(bottom: 10, right: 10),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
    );
  }
}
