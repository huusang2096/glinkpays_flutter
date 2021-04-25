import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/my_voucher/cubit/my_voucher_cubit.dart';
import 'package:vipay/src/screens/my_voucher/widgets/my_voucher_cart_item.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:simplest/simplest.dart';

class MyVoucherScreen extends CubitWidget<MyVoucherCubit, MyVoucherState> {
  static provider() {
    return BlocProvider(
      create: (_) => MyVoucherCubit(),
      child: MyVoucherScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
    bloc.getMyVoucher();
  }

  @override
  void listener(BuildContext context, MyVoucherState state) {
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, MyVoucherState state) {
    final Size _size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.data.isLoading,
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SafeArea(
            child: Container(
              width: _size.width,
              height: _size.height,
              color: greyColor300,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                child: state.data.myVoucherResponse == null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Images.voucherIcon.loadImage(size: 100),
                          SizedBox(height: 10.0),
                          Text(
                            'currently_no_voucher'.tr,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      )
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return MyVoucherCustomItemCardWidget(
                              state.data.myVoucherResponse.data[index] ??
                                  ''); // => null
                        },
                        itemCount: state
                            .data.myVoucherResponse.data.length, //exception
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(
        'my_voucher'.tr,
        style: TextStyle(
          color: whiteColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          navigator.pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: whiteColor,
        ),
      ),
      centerTitle: true,
    );
  }
}
