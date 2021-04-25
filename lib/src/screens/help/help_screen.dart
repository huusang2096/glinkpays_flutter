import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/launch_url.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/help/cubit/help_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';

class HelpScreen extends CubitWidget<HelpCubit, HelpState> {
  static BlocProvider<HelpCubit> provider() {
    return BlocProvider<HelpCubit>(
      create: (_) => HelpCubit(),
      child: HelpScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getHelp();
    super.afterFirstLayout(context);
  }

  @override
  void listener(BuildContext context, HelpState state) {
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, HelpState state) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: AppProgressHUB(
        inAsyncCall: state.data.isLoading,
        child: SafeArea(
          child: Container(
            height: _size.height,
            width: _size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'support'.tr,
                    style: title,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  _buildHelpOptions(context, state),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'our_team_persons_will_contact_you_soon'.tr,
                    style: body1.apply(color: primaryColor),
                  ),
                ],
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
        'help'.tr,
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

  Widget _buildHelpOptions(BuildContext context, HelpState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // phone
        _buildButton(
          icon: FontAwesomeIcons.phone,
          color: Colors.green,
          onTap: () => {
            bloc.launchUrl(state.data.helpResponse.data.phone, UrlScheme.phone),
          },
        ),
        SizedBox(
          width: 24,
        ),

        // email
        _buildButton(
          icon: FontAwesomeIcons.envelope,
          color: Colors.indigo,
          onTap: () => {
            bloc.launchUrl(state.data.helpResponse.data.email, UrlScheme.email),
          },
        ),
        SizedBox(
          width: 24,
        ),

        // website
        _buildButton(
          icon: FontAwesomeIcons.globe,
          color: Colors.blueGrey,
          onTap: () => {
            bloc.launchUrl(
                state.data.helpResponse.data.website, UrlScheme.browser),
          },
        ),
      ],
    );
  }

  Widget _buildButton({IconData icon, Color color, Function onTap}) {
    return PhysicalModel(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50.0),
        child: InkWell(
          splashColor: splashColor,
          borderRadius: BorderRadius.circular(50.0),
          onTap: onTap,
          child: Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                width: 2.0,
                color: color,
              ),
            ),
            child: Center(
                child: FaIcon(
              icon,
              color: color,
              size: 24,
            )),
          ),
        ));
  }
}
