import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/screens/transfer/cubit/transfer/transfer_cubit.dart';
import 'package:vipay/src/screens/transfer/widgets/button_transfer_widget.dart';
import 'package:vipay/src/screens/transfer/widgets/common.dart';
import 'package:vipay/src/screens/transfer/widgets/custom_textfield_money_widget.dart';
import 'package:vipay/src/screens/transfer/widgets/custom_textfield_note_widget.dart';
import 'package:vipay/src/screens/transfer/widgets/information_contact_widget.dart';
import 'package:vipay/src/screens/transfer/widgets/select_voucher_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';

class TransferScreen extends CubitWidget<TransferCubit, TransferState> {
  static BlocProvider<TransferCubit> provider({UserSearchItem user}) {
    return BlocProvider(
        create: (context) => TransferCubit(user), child: TransferScreen());
  }

  final controllerMoney = TextEditingController();
  final controllerNote = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget builder(BuildContext context, TransferState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.data.isLoadingScaffold,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: AppBarTransferSelectUserWidget(
            titleText: 'transfers'.tr,
            onPressIcon: () {
              navigator.pop();
            },
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: [
              SizedBox.expand(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          color: colorWhite,
                          padding: EdgeInsets.only(top: 20.0, bottom: 30.0),
                          child: Column(
                            children: [
                              InformationContactWidget(),
                              CustomTextFieldMoneyWidget(
                                controller: controllerMoney,
                                onChange: (value) {
                                  bloc.changeResponseWhenChangeMoney();
                                },
                              ),
                            ],
                          ),
                        ),
                        state.data.selectedCurrency != null
                            ? state.data.selectedCurrency.currId ==
                                    IdCurrency.ID_USD
                                ? SelectVoucherWidget(
                                    handleSelectVoucher: () {
                                      if (_formKey.currentState.validate()) {
                                        context
                                            .read<TransferCubit>()
                                            .handleSelectVoucher(
                                                controllerMoney.text);
                                      }
                                    },
                                  )
                                : Container(
                                    margin: EdgeInsets.symmetric(vertical: 5.0),
                                  )
                            : SizedBox.shrink(),
                        CustomTextFieldNoteWidget(
                            size: size, controllerNote: controllerNote),
                        SizedBox(
                          height: size.height * 0.1,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ButtonTransferWidget(
                titleButton: 'transfers'.tr,
                size: size,
                onPress: () {
                  if (_formKey.currentState.validate()) {
                    bloc.sendMoney(
                        amountController: controllerMoney,
                        noteController: controllerNote);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  dynamic dispose() {
    controllerMoney.dispose();
    controllerNote.dispose();
    return super.dispose();
  }
}
