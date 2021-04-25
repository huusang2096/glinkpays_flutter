import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';

class SignatureWidget extends StatelessWidget {
  final String phoneAccount;
  SignatureWidget({Key key, this.phoneAccount}) : super(key: key);

  final phoneService = locator<PhoneAuthService>();
  final snackBarService = locator<SnackbarService>();
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.black,
    exportBackgroundColor: Colors.transparent,
  );

  @override
  Widget build(BuildContext context) {
    print(phoneAccount);
    return Material(
      elevation: 1.0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'signature'.tr,
                style: context.textTheme.headline5,
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ClipRRect(
                  child: Signature(
                    controller: _controller,
                    width: double.infinity,
                    height: double.infinity,
                    backgroundColor: Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: _buildButton(
                      context,
                      'clear'.tr,
                      () => _controller.clear(),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: _buildButton(
                            context, 'submit'.tr, () => handleSubmit()))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, Function onPress,
      {Color color = Colors.green, Color borderColor = Colors.green}) {
    return SizedBox(
        height: 50,
        child: RaisedButton(
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: borderColor)),
            child: Text(
              title,
              style: context.textTheme.subtitle1.apply(color: Colors.white),
            ),
            onPressed: onPress));
  }

  void handleSubmit() async {
    final bytes = await _controller.toPngBytes();
    if (bytes == null) {
      snackBarService.showSnackbar(
          message: 'please_re_sign_before_updating'.tr);
    } else {
      navigator.pop({'bytes': bytes});
    }
  }

  String formatPhone(String phone) {
    String result;
    if (!phone.contains('+84')) {
      result = '+84' + phone;
    }
    return result ?? phone;
  }
}
