import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/transfer_money/get_balance_available_response.dart';

import 'package:vipay/src/screens/transfer/cubit/transfer/transfer_cubit.dart';

class CustomTextFieldMoneyWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChange;
  const CustomTextFieldMoneyWidget({Key key, this.controller, this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<TransferCubit>();
    final state = cubit.state;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        children: [
          AbsorbPointer(
            absorbing: false,
            child: TextFormField(
              validator: cubit.validateAmount,
              onChanged: (string) {
                onChange(string);
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                hintStyle: TextStyle(color: colorGrey.withOpacity(0.5)),
                hintText: 'enter_the_amount'.tr,
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
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: DropdownButtonHideUnderline(
                child: state.data.getBalanceAvailableResponse == null
                    ? DropdownButton(
                        value: 1,
                        items: [
                          DropdownMenuItem(
                            child: SizedBox(
                                width: 20.0,
                                height: 20.0,
                                child: CircularProgressIndicator()),
                            value: 1,
                          ),
                        ],
                        onChanged: (value) {})
                    : DropdownButton<Wallet>(
                        value: state.data.selectedCurrency,
                        items: state
                            .data.getBalanceAvailableResponse.data.wallets
                            .map((e) {
                          return DropdownMenuItem<Wallet>(
                            value: e,
                            child: Text(e.currCode,
                                style: TextStyle(color: colorTitle)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          cubit.changeSelectedCurrency(value);
                        }),
              ),
            ),
          )
        ],
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
    } else if (newValue.text.compareTo(oldValue.text) != 0) {
      final int selectionIndexFromTheRight =
          newValue.text.length - newValue.selection.end;
      final f = NumberFormat('#,###');
      if (int.tryParse(newValue.text.replaceAll(f.symbols.GROUP_SEP, '')) ==
          null) {
        return oldValue;
      }
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
