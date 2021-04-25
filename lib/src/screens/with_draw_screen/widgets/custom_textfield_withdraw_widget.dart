import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';

class CustomTextFieldWithdrawWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final String suffixText;
  final String hintText;
  final Function validator;

  CustomTextFieldWithdrawWidget(
      {Key key,
      this.controller,
      this.enabled,
      this.suffixText,
      this.hintText,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: TextFormField(
        enabled: enabled,
        validator: validator ??
            (value) {
              return null;
            },
        onChanged: (string) {
          print(string.replaceAll(',', ''));
        },
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textAlign: TextAlign.left,
        textAlignVertical: TextAlignVertical.bottom,
        textInputAction: TextInputAction.done,
        keyboardType:
            TextInputType.numberWithOptions(signed: false, decimal: true),
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 5.0, left: 10.0),
          isDense: true,
          suffixIcon: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  suffixText,
                  style: body1.copyWith(color: colorTitle),
                ),
                SizedBox(height: 4.0)
              ],
            ),
          ),
          // contentPadding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
          hintStyle: TextStyle(color: colorGrey.withOpacity(0.5)),
          hintText: hintText,
          border: UnderlineInputBorder(
            borderSide: BorderSide(),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorBackgroundAppBar),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}

class NumericTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    } else if (newValue.text.length > 20) {
      return oldValue;
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      final int selectionIndexFromTheRight =
          newValue.text.length - newValue.selection.end;
      final f = NumberFormat('#,###');
      final number =
          int.parse(newValue.text.replaceAll(f.symbols.GROUP_SEP, ''));
      final newString = f.format(number);
      return TextEditingValue(
        text: newString,
        selection: TextSelection.collapsed(
            offset: newString.length - selectionIndexFromTheRight),
      );
    } else {
      return newValue;
    }
  }
}
