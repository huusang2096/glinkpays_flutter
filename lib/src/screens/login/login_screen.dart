import 'package:flutter/material.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/validations.dart';
import 'package:vipay/src/screens/login/cubit/login_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';

import 'widget/relogin_widget.dart';

class LoginScreen extends CubitWidget<LoginCubit, LoginState> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passEmailController = TextEditingController();
  final TextEditingController _passPhoneController = TextEditingController();
  final Validations _validations = Validations();
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'VN', dialCode: '+84');

  static BlocProvider<LoginCubit> provider() {
    return BlocProvider<LoginCubit>(
      create: (_) => LoginCubit(),
      child: LoginScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.loadData();
  }

  @override
  void listener(BuildContext context, LoginState state) {
    super.listener(context, state);
    if (state is LoginSuccessState) {
      navigator.pushNamedAndRemoveUntil(
          RouteGenerator.tabScreen, (route) => false);
    }
  }

  @override
  Widget builder(BuildContext context, LoginState state) {
    return AppProgressHUB(
      inAsyncCall: state.isLoading,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: _buildAppBar(context),
        body: _buildBody(context, state),
      ),
    );
  }

  Widget _buildBody(BuildContext context, LoginState state) {
    if (state.existLoginRequest != null) {
      return ReloginWidget();
    }
    return SafeArea(
      child: Form(
        key: _loginFormKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'welcome_to_vipay'.tr,
                  style: TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                SizedBox(
                  height: 30,
                ),
                _buildFormLogin(context, state),
                _buildButtonChangeTypeLogin(context, state),
                SizedBox(
                  height: 30.0,
                ),
                _buildButtonLogin(context, state),
                SizedBox(
                  height: 10,
                ),
                CustomDefaultButton(
                  text: 'i_do_not_have_an_account'.tr,
                  press: () =>
                      navigator.pushNamed(RouteGenerator.registerScreen),
                ),
                SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: () =>
                      navigator.pushNamed(RouteGenerator.forgotPasswordScreen),
                  child: Text('forgot_password'.tr,
                      style: context.textTheme.subtitle1
                          .apply(color: context.theme.hintColor)),
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.home,
                          color: Theme.of(context).hintColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'go_to_home'.tr,
                          style: context.textTheme.headline6
                              .apply(color: Theme.of(context).hintColor),
                        ),
                      ],
                    ),
                    onPressed: () => navigator.pushNamedAndRemoveUntil(
                        RouteGenerator.tabScreen, (route) => false))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInternationalPhoneNumber(
      {String hintText, Function(PhoneNumber) onChange}) {
    return InternationalPhoneNumberInput(
      selectorConfig: SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
      ),
      onInputChanged: (PhoneNumber value) {
        onChange(value);
      },
      formatInput: true,
      initialValue: _phoneNumber,
      errorMessage: 'invalid_phone_number'.tr,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      inputDecoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
        hintText: hintText.tr,
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        errorBorder: _outlineInputBorder(color: Colors.red),
        focusedBorder: _outlineInputBorder(color: greyColor, width: 1.6),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: true,
      elevation: 0.0,
      iconTheme: context.theme.iconTheme.copyWith(color: Colors.grey),
    );
  }

  Widget _buildFormLogin(BuildContext context, LoginState state) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        state.isCheckLoginByPhone
            ? _buildInternationalPhoneNumber(
                hintText: 'phone',
                onChange: (value) {
                  _phoneController.text = value.phoneNumber;
                  _phoneNumber = value;
                },
              )
            : TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: _validations.validateEmail,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'email'.tr,
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  contentPadding: EdgeInsets.all(12.0),
                  prefixIcon: Icon(Icons.email, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  errorBorder: _outlineInputBorder(color: Colors.red),
                  focusedBorder:
                      _outlineInputBorder(color: greyColor, width: 1.6),
                ),
              ),
        SizedBox(height: 10.0),
        TextFormField(
          keyboardType: TextInputType.text,
          validator: _validations.validatePassword,
          obscureText: state.isPasswordObscure,
          controller: state.isCheckLoginByPhone
              ? _passPhoneController
              : _passEmailController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.0),
            hintText: 'password'.tr,
            hintStyle: TextStyle(color: Colors.grey[400]),
            prefixIcon: Icon(
              Icons.lock_rounded,
              color: Colors.grey,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                bloc.toggleShowPassword();
              },
              color: Colors.grey,
              icon: Icon(state.isPasswordObscure
                  ? Icons.visibility
                  : Icons.visibility_off),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            // focusedErrorBorder: _outlineInputBorder(color: Colors.redAccent),
            errorBorder: _outlineInputBorder(color: Colors.red),
            focusedBorder: _outlineInputBorder(color: greyColor, width: 1.6),
            // enabledBorder: _outlineInputBorder(color: greyColor),
          ),
        ),
      ],
    );
  }

  Widget _buildButtonChangeTypeLogin(BuildContext context, LoginState state) {
    return Padding(
      padding: EdgeInsets.only(top: 40.0),
      child: FlatButton(
        child: Text(
          state.isCheckLoginByPhone ? 'login_by_email'.tr : 'login_by_phone'.tr,
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).hintColor,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () => bloc.toggleLoginByPhone(),
      ),
    );
  }

  Widget _buildButtonLogin(BuildContext context, LoginState state) {
    return CustomDefaultButton(
      text: 'login'.tr,
      press: () {
        if (_loginFormKey.currentState.validate()) {
          bloc.submitLogin(
              phoneNumber: _phoneNumber,
              email: _emailController.text,
              password: state.isCheckLoginByPhone
                  ? _passPhoneController.text
                  : _passEmailController.text);
        }
      },
    );
  }

  OutlineInputBorder _outlineInputBorder({Color color, double width = 1.0}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
