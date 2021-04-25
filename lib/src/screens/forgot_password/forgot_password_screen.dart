import 'package:flutter/material.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';
import 'package:simplest/simplest.dart';

class ForgotPasswordScreen
    extends CubitWidget<ForgotPasswordCubit, ForgotPasswordState> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'VN', dialCode: "+84");

  static provider() {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(),
      child: ForgotPasswordScreen(),
    );
  }

  @override
  Widget builder(BuildContext context, ForgotPasswordState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        iconTheme: context.theme.iconTheme.copyWith(color: Colors.grey),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                  child: Theme(
                    data: Theme.of(context).copyWith(primaryColor: Colors.grey),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _buildHeaderReset(),
                        _buildFormReset(context),
                        SizedBox(
                          height: 20,
                        ),
                        CustomDefaultButton(
                          text: 'reset_password'.tr,
                          isLoading: bloc.state.isShowLoading,
                          press: () => bloc.submitReset(
                            phoneNumber: _phoneNumber,
                            password: _passwordController.text,
                            confirmPassword: _confirmPasswordController.text,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'already_have_an_account'.tr,
                                style: body2,
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              GestureDetector(
                                onTap: () => navigator.pop(),
                                child: Text(
                                  'login_here'.tr,
                                  style: textStyleActive,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void listener(BuildContext context, ForgotPasswordState state) {
    super.listener(context, state);

    if (state is ForgotPasswordSuccessState) {
      navigator.pushReplacementNamed(RouteGenerator.loginScreen);
    }
  }

  @override
  dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    return super.dispose();
  }

  Widget _buildFormReset(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: InternationalPhoneNumberInput(
              errorMessage: 'invalid_phone_number'.tr,
              selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
              onInputChanged: (value) {
                _phoneNumber = value;
              },
              onInputValidated: (isValidate) {},
              initialValue: _phoneNumber,
              autoValidateMode: AutovalidateMode.onUserInteraction,
              searchBoxDecoration: InputDecoration(
                hintText: '',
              ),
              inputDecoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                errorBorder: _outlineInputBorder(color: Colors.red),
                focusedBorder:
                    _outlineInputBorder(color: greyColor, width: 1.6),
                hintText: 'phone'.tr,
                hintStyle: TextStyle(color: hintStyleColor, fontSize: 14),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          obscureText: bloc.state.isPasswordObsecure,
          controller: _confirmPasswordController,
          textInputAction: TextInputAction.next,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            hintText: 'enter_new_pass'.tr,
            hintStyle: TextStyle(color: Color(0xFFB3B4B4), fontSize: 14),
            prefixIcon: Icon(
              Icons.lock,
              color: Color(0xFFB3B4B4),
              size: 20,
            ),
            suffixIcon: GestureDetector(
              onTap: bloc.touchShowPassword,
              child: Icon(
                bloc.state.isPasswordObsecure
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Color(0xFFB3B4B4),
                size: 20,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            errorBorder: _outlineInputBorder(color: Colors.red),
            focusedBorder: _outlineInputBorder(color: greyColor, width: 1.6),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          obscureText: bloc.state.isConfirmObsecure,
          controller: _passwordController,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            hintText: 'confirm_new_pass'.tr,
            hintStyle: TextStyle(color: Color(0xFFB3B4B4), fontSize: 14),
            prefixIcon: Icon(Icons.lock, color: Color(0xFFB3B4B4), size: 20),
            suffixIcon: GestureDetector(
              onTap: bloc.touchShowPasswordAgain,
              child: Icon(
                bloc.state.isConfirmObsecure
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Color(0xFFB3B4B4),
                size: 20,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            errorBorder: _outlineInputBorder(color: Colors.red),
            focusedBorder: _outlineInputBorder(color: greyColor, width: 1.6),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderReset() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Images.logo.loadImage(height: 72),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
        ),
        Text(
          'reset_password'.tr,
          style: TextStyle(
              color: Color(0xFF28ABAE),
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _outlineInputBorder({Color color, double width = 1.0}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
