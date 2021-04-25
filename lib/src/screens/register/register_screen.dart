import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/common/validations.dart';
import 'package:vipay/src/screens/register/cubit/register_cubit.dart';
import 'package:vipay/src/screens/register/widgets/button_get_otp.dart';
import 'package:vipay/src/screens/register/widgets/select_type_user_drop_down.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';

const double _defaultPadding = 25.0;
const Color _colorWhite = Colors.white;
const Color _colorTitle = Color(0xff33b0b3);
const Color _colorGradientStart = Color(0xffafdc53);
const Color _colorGradientEnd = Color(0xff89d461);
const Color _colorRedAccent = Colors.redAccent;
const Color _colorGrey = Colors.grey;

// ignore: must_be_immutable
class RegisterScreen extends CubitWidget<RegisterCubit, RegisterState> {
  static provider() {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: RegisterScreen(),
    );
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Validations _validations = Validations();
  final TextEditingController _controllerFirstName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerPasswordConfirm =
      TextEditingController();

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
  }

  @override
  Widget builder(BuildContext context, RegisterState state) {
    final Size _size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.isLoading,
      child: Scaffold(
        appBar: _buildAppBarContent(context),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: _defaultPadding),
              color: _colorWhite,
              width: _size.width,
              height: _size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: _defaultPadding / 4),
                    _buildTitleContent(textKey: 'register_for_vipay'),
                    _buildTextFieldContent(
                      hintTextKey: 'first_name',
                      controller: _controllerFirstName,
                      validator: _validations.validateName,
                    ),
                    _buildTextFieldContent(
                      hintTextKey: 'last_name',
                      controller: _controllerLastName,
                      validator: _validations.validateName,
                    ),
                    _buildTextFieldContent(
                        hintTextKey: 'email',
                        controller: _controllerEmail,
                        validator: _validations.validateEmail,
                        inputType: TextInputType.emailAddress),
                    buildInternationalPhoneNumberInput(
                        titleTextKey: 'phone',
                        onChange: (phoneNumber) {
                          print(phoneNumber.phoneNumber);
                          _controllerPhone.text = phoneNumber.phoneNumber;
                        }),
                    _buildTextFieldContent(
                      hintTextKey: 'password',
                      obscureText: true,
                      controller: _controllerPassword,
                      validator: _validations.validatePassword,
                    ),
                    _buildTextFieldContent(
                      hintTextKey: 'password_confirm',
                      controller: _controllerPasswordConfirm,
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'please_choose_a_password'.tr;
                        }
                        if (_controllerPassword.text != value) {
                          return 'password_not_match'.tr;
                        }
                        return null;
                      },
                    ),
                    SelectTypeUserDropDown(
                      size: _size,
                      padding: _defaultPadding,
                    ),
                    ButtonGetOTP(
                      size: _size,
                      gradientEnd: _colorGradientEnd,
                      gradientStart: _colorGradientStart,
                      title: 'get_otp_code'.tr,
                      onPress: () {
                        bloc.submit(
                          firstName: _controllerFirstName.text,
                          lastName: _controllerLastName.text,
                          email: _controllerEmail.text,
                          phone: _controllerPhone.text,
                          password: _controllerPassword.text,
                          confirmPassword: _controllerPasswordConfirm.text,
                        );
                      },
                    ),
                    SizedBox(height: _defaultPadding)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInternationalPhoneNumberInput(
      {String titleTextKey, Function(PhoneNumber) onChange}) {
    return Container(
      margin: EdgeInsets.only(top: 0.0, bottom: _defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InternationalPhoneNumberInput(
            hintText: ' ',
            formatInput: true,
            onSaved: (value) {},
            initialValue: PhoneNumber(
              dialCode: '84',
              isoCode: 'VN',
            ),
            errorMessage: 'invalid_phone_number'.tr,
            inputDecoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: _colorRedAccent)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: _colorTitle),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              hintText: 'phone'.tr,
            ),
            autoValidateMode: AutovalidateMode.onUserInteraction,
            selectorConfig:
                SelectorConfig(selectorType: PhoneInputSelectorType.DIALOG),
            onInputChanged: (PhoneNumber value) {
              onChange(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildTitleContent({@required String textKey}) {
    return Padding(
      padding: EdgeInsets.only(bottom: _defaultPadding),
      child: Text(
        textKey.tr,
        style: title.copyWith(color: _colorTitle, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildTextFieldContent({
    @required String hintTextKey,
    @required TextEditingController controller,
    int minLine = 1,
    int maxLine = 1,
    @required Function validator,
    TextInputType inputType,
    bool obscureText = false,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 0.0, bottom: _defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: hintTextKey.tr + ": ",
                  style: body1.copyWith(color: _colorGrey)),
              TextSpan(text: '*', style: body1.copyWith(color: _colorRedAccent))
            ]),
          ),
          TextFormField(
            obscureText: obscureText,
            textInputAction: TextInputAction.done,
            controller: controller,
            validator: validator,
            minLines: minLine,
            maxLines: maxLine,
            keyboardType: inputType ?? TextInputType.text,
            autocorrect: false,
            onChanged: (value) {
              //formKey.currentState.validate();
            },
            decoration: InputDecoration(
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: _colorRedAccent),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: _colorRedAccent),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: _colorTitle),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: _colorGrey),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBarContent(BuildContext context) {
    return AppBar(
      backgroundColor: _colorWhite,
      leading: IconButton(
        highlightColor: Colors.transparent,
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: _colorGrey,
        ),
      ),
      elevation: 0.0,
      bottomOpacity: 0.0,
    );
  }

  @override
  dynamic dispose() {
    _controllerFirstName.dispose();
    _controllerLastName.dispose();
    _controllerEmail.dispose();
    _controllerPhone.dispose();
    _controllerPassword.dispose();
    _controllerPasswordConfirm.dispose();
    return super.dispose();
  }
}
