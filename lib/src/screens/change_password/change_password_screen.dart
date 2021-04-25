import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/common/validations.dart';
import 'package:vipay/src/screens/change_password/cubit/change_password_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';

class ChangePasswordScreen
    extends CubitWidget<ChangePasswordCubit, ChangePasswordState> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _oldPassController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _passConfirmController = TextEditingController();

  final Validations _validations = Validations();

  static BlocProvider<ChangePasswordCubit> provider() {
    return BlocProvider<ChangePasswordCubit>(
      create: (_) => ChangePasswordCubit(),
      child: ChangePasswordScreen(),
    );
  }

  @override
  void listener(BuildContext context, ChangePasswordState state) {
    super.listener(context, state);
    if (state is UpdatePasswordSuccess) {
      _oldPassController.clear();
      _passController.clear();
      _passConfirmController.clear();
    }
  }

  @override
  Widget builder(BuildContext context, ChangePasswordState state) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _buildAppBar(context),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: _validations.validatePassword,
                        controller: _oldPassController,
                        obscureText: state.data.isOldPasswordObscure,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12.0),
                          hintText: 'old_password'.tr,
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            color: Colors.grey,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              bloc.toggleShowOldPassword();
                            },
                            color: Colors.grey,
                            icon: Icon(state.data.isOldPasswordObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          errorBorder: _outlineInputBorder(color: Colors.red),
                          focusedBorder:
                              _outlineInputBorder(color: greyColor, width: 1.6),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: _validations.validatePassword,
                        controller: _passController,
                        obscureText: state.data.isPasswordObscure,
                        textInputAction: TextInputAction.next,
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
                            icon: Icon(state.data.isPasswordObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          errorBorder: _outlineInputBorder(color: Colors.red),
                          focusedBorder:
                              _outlineInputBorder(color: greyColor, width: 1.6),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        validator: _validations.validatePassword,
                        controller: _passConfirmController,
                        obscureText: state.data.isConfirmPasswordObscure,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12.0),
                          hintText: 'password_confirm'.tr,
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          prefixIcon: Icon(
                            Icons.lock_rounded,
                            color: Colors.grey,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              bloc.toggleShowConfirmPassword();
                            },
                            color: Colors.grey,
                            icon: Icon(state.data.isConfirmPasswordObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          errorBorder: _outlineInputBorder(color: Colors.red),
                          focusedBorder:
                              _outlineInputBorder(color: greyColor, width: 1.6),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildButtonChangePassword(context, state),
                    ],
                  ),
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
        'change_password'.tr,
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

  OutlineInputBorder _outlineInputBorder({Color color, double width = 1.0}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  Widget _buildButtonChangePassword(
      BuildContext context, ChangePasswordState state) {
    return CustomDefaultButton(
      text: 'change_password'.tr,
      press: () {
        if (_formKey.currentState.validate()) {
          bloc.submitChangePassword(
              oldPass: _oldPassController.text,
              password: _passController.text,
              confirmPassword: _passConfirmController.text);
        }
      },
      isLoading: state.data.isLoading,
    );
  }
}
