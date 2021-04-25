import 'package:flutter/material.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/verification/widget/verify_widget_common.dart';

class VerifyPhoneWidget extends StatefulWidget {
  @override
  _VerifyPhoneWidgetState createState() => _VerifyPhoneWidgetState();
}

class _VerifyPhoneWidgetState extends State<VerifyPhoneWidget> {
  PhoneNumber phoneNumber = PhoneNumber();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controllerPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final stateInheritance = context.watch<InheritanceCubit>().state;
    return Column(
      children: [
        buildRow(
            leftText: 'verify_phone'.tr,
            onPressVerify: () {},
            enable: (stateInheritance.data?.user?.phone == null ||
                    stateInheritance.data.user.phone.isEmpty)
                ? true
                : false,
            showPrefix: (stateInheritance.data?.user?.phone == null ||
                    stateInheritance.data.user.phone.isEmpty)
                ? false
                : true,
            paddingBottom: 16.0),
        if ((stateInheritance.data?.user?.phone == null ||
            stateInheritance.data.user.phone.isEmpty))
          Form(
            key: formKey,
            child: InternationalPhoneNumberInput(
              hintText: ' ',
              formatInput: true,
              onSaved: (value) {},
              textFieldController: controllerPhone,
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
                    borderSide: BorderSide(color: Colors.redAccent)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff33b0b3)),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                hintText: 'phone'.tr,
              ),
              autoValidateMode: AutovalidateMode.onUserInteraction,
              selectorConfig:
                  SelectorConfig(selectorType: PhoneInputSelectorType.DIALOG),
              onInputChanged: (PhoneNumber value) {
                phoneNumber = value;
                // controllerPhone.text = value.phoneNumber;
              },
            ),
          ),
        if ((stateInheritance.data?.user?.phone == null ||
            stateInheritance.data.user.phone.isEmpty))
          Padding(
            padding: EdgeInsets.only(top: 14.0, bottom: 16.0),
            child: CustomDefaultButton(
              press: () {
                if (formKey.currentState.validate()) {
                  context.read<InheritanceCubit>().verifyPhone(phoneNumber);
                }
              },
              isLoading: stateInheritance.data.isLoadingSignature,
              text: 'verify'.tr,
            ),
          )
      ],
    );
  }
}
