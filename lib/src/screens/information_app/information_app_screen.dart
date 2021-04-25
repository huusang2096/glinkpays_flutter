import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/information_app/cubit/information_app_cubit.dart';

class InformationAppScreen
    extends CubitWidget<InformationAppCubit, InformationAppState> {
  static provider() {
    return BlocProvider(
      create: (_) => InformationAppCubit(),
      child: InformationAppScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
    bloc.loadData();
  }

  @override
  Widget builder(BuildContext context, state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Center(child: Images.logo.loadImage(height: 200)),
              ),
              SizedBox(
                height: 80,
                child: Center(
                  child: Text(
                    'Version ${state.data?.version ?? ''}',
                    style: body1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(
        'info_app'.tr,
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
