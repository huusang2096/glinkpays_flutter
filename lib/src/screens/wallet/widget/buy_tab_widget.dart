import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/exchange_money/list_currency.dart';
import 'package:vipay/src/screens/wallet/cubit/wallet_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/wallet/widget/custom_dropdown_menu_widget.dart';

class BuyTabWidget extends StatefulWidget {
  BuyTabWidget();

  @override
  _BuyTabWidgetState createState() => _BuyTabWidgetState();
}

class _BuyTabWidgetState extends State<BuyTabWidget> {
  final TextEditingController _txtController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WalletCubit>().state;
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: state.data.isLoading
            ? SpinKitCircle(
                color: activeGreen,
              )
            : FlatButton(
                padding: EdgeInsets.all(16),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                        colors: [Color(0xFFAEDE48), Color(0xFF87D65A)]),
                  ),
                  child: Center(
                    child: Text(
                      'bug_gas'.tr.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    context.read<WalletCubit>().buyGas(
                          double.parse(_txtController.text == ''
                              ? '0'
                              : _txtController.text),
                        );
                  }
                }),
        body: _buildBody(context: context, state: state));
  }

  Widget _buildBody({BuildContext context, WalletState state}) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        width: double.infinity,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    maxLength: 11,
                    controller: _txtController,
                    keyboardType: TextInputType.numberWithOptions(signed: true),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    textAlign: TextAlign.center,
                    onChanged: (value) => context
                        .read<WalletCubit>()
                        .convertValue(
                            value.isNullOrBlank ? 0 : value.parseDouble()),
                    validator: (value) => checkBalance(double.parse(value)),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF87D65A)),
                    decoration: InputDecoration(
                      hintText: 'number_money'.tr,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintStyle: TextStyle(
                          color: Color(0xFF87D65A),
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              /* Container(
                height: 1,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                color: Color(0xFFC4C4C4),
              ),*/
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color(0xFFAEDE48)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'usd'.tr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 1,
                            color: Color(0xFFC6FC54),
                          ),
                          SizedBox(width: 5),
                          SvgPicture.asset('assets/images/arrow_bottom.svg'),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SvgPicture.asset('assets/images/change.svg'),
                    Container(
                      height: 40,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color(0xFF239EA1)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'gas'.tr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 1,
                            color: Color(0xFFC6FC54),
                          ),
                          SizedBox(width: 5),
                          SvgPicture.asset('assets/images/arrow_bottom.svg'),
                          SizedBox(width: 5),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  '1 GAS = ${(1 / state.data.exchangeRate).toPrecision(2)} USD',
                  style: body1,
                ),
              ),
              SizedBox(height: 20),
              state.data.isConvertLoading
                  ? SpinKitCircle(
                      color: activeGreen,
                    )
                  : Text(
                      state.data?.valueConvert,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF29B0B4),
                          fontWeight: FontWeight.normal),
                    ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  String checkBalance(double value) {
    if (value.isBlank) {
      return 'cannot_empty'.tr;
    } else if (context.read<WalletCubit>().checkBalance(value)) {
      return 'balance_is_not_enough'.tr;
    } else {
      return null;
    }
  }
}
