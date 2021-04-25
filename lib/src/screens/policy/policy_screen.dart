import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/policy/cubit/policy_cubit.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';

class PolicyScreen extends CubitWidget<PolicyCubit, PolicyState> {
  WebViewController _webViewController;

  @override
  Widget builder(BuildContext context, PolicyState state) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('policy_and_privacy'.tr),
        ),
        body: _buildBody(context, state),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.read<PolicyCubit>().loadData();
  }

  Widget _buildBody(BuildContext context, PolicyState state) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Container(
            child: state.data.isLoading
                ? Center(
                    child: SpinKitCircle(
                      color: primaryColor,
                    ),
                  )
                : WebView(
                    onWebViewCreated: (controller) {
                      _webViewController = controller;
                      _loadPolicy(context, state);
                    },
                  ),
          )),
          InkWell(
            onTap: () => context.read<PolicyCubit>().updateAgree(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Checkbox(
                      value: state.data.isAgree,
                      onChanged: (_) =>
                          context.read<PolicyCubit>().updateAgree()),
                  Expanded(child: Text('i_have_read_and_agree'.tr))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: CustomDefaultButton(
              text: 'k_continue'.tr,
              press: !state.data.isAgree
                  ? null
                  : () => context.read<PolicyCubit>().onSelectConitue(),
            ),
          )
        ],
      ),
    );
  }

  @override
  void listener(BuildContext context, PolicyState state) {
    super.listener(context, state);
    state.maybeWhen(
        loaded: (data) => _loadPolicy(context, state), orElse: () {});
  }

  void _loadPolicy(BuildContext context, PolicyState state) {
    if (_webViewController == null || state.data.policies.isEmpty) {
      return;
    }
    final policy = state.data.policies.first;
    final content = policy.content;
    _webViewController.loadUrl(Uri.dataFromString(content,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  static BlocProvider<PolicyCubit> provider() {
    return BlocProvider(
      create: (context) => PolicyCubit(),
      child: PolicyScreen(),
    );
  }
}
