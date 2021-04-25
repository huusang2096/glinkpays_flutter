import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/transfer/widgets/button_transfer_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/screens/with_draw_screen/cubit/withdraw_add_bank_cubit.dart';
import 'package:vipay/src/screens/with_draw_screen/widgets/bottom_sheet_suggest.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';

class WithdrawAddBankScreen
    extends CubitWidget<WithdrawAddBankCubit, WithdrawAddBankState> {
  static provider() {
    return BlocProvider(
        create: (context) => WithdrawAddBankCubit(),
        child: WithdrawAddBankScreen());
  }

  final _formKey = GlobalKey<FormState>();

  final TextEditingController controllerGlobalName = TextEditingController();
  final TextEditingController controllerAccountName = TextEditingController();
  final TextEditingController controllerAccountNumber = TextEditingController();
  final TextEditingController controllerSwiftCode = TextEditingController();
  final TextEditingController controllerBankName = TextEditingController();
  final TextEditingController controllerBankBranchName =
      TextEditingController();
  final TextEditingController controllerBankBranchCity =
      TextEditingController();
  final TextEditingController controllerBankBranchAddress =
      TextEditingController();
  final TextEditingController controllerCountry = TextEditingController();

  @override
  Widget builder(BuildContext context, WithdrawAddBankState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.isLoading,
      child: Stack(
        children: [
          Scaffold(
            appBar: PreferredSize(
              preferredSize: AppBar().preferredSize,
              child: AppBarTransferSelectUserWidget(
                titleText: 'add_card_account'.tr.toUpperCase(),
                onPressIcon: () {
                  navigator.pop();
                },
              ),
            ),
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SizedBox.expand(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width,
                          margin: EdgeInsets.only(left: 20.0, top: 20.0),
                          child: Center(
                            child: Text(
                              'bank_card_information'.tr,
                              style:
                                  title.copyWith(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextFieldAddInformationBank(size,
                                  controller: controllerAccountName,
                                  textInputType: TextInputType.text,
                                  maxLength: null,
                                  textInputAction: TextInputAction.next,
                                  focusNode: null,
                                  hintText: 'account_name'.tr,
                                  showSuffixIcon: true,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  onPressSuffixIcon: () =>
                                      showBottomSheetSuggest(context, size,
                                          width: size.width,
                                          height: size.height * 0.37,
                                          suggestText: 'name_front_of_card'.tr,
                                          colorCardName: Colors.black),
                                  validator: bloc.validatorAccountName),
                              customTextFieldAddInformationBank(size,
                                  controller: controllerAccountNumber,
                                  textInputType: TextInputType.text,
                                  maxLength: null,
                                  textInputAction: TextInputAction.next,
                                  focusNode: null,
                                  showSuffixIcon: true,
                                  hintText: 'account_number'.tr,
                                  onPressSuffixIcon: () =>
                                      showBottomSheetSuggest(context, size,
                                          width: size.width,
                                          isSuggestAccountNumber: true,
                                          height: size.height * 0.4,
                                          suggestText: 'infor_front_of_card'.tr,
                                          colorCardNumber: Colors.black),
                                  validator: bloc.validatorAccountNumber),
                              customTextFieldAddInformationBank(size,
                                  controller: controllerSwiftCode,
                                  textInputType: TextInputType.text,
                                  maxLength: null,
                                  textInputAction: TextInputAction.next,
                                  focusNode: null,
                                  hintText: 'swift_code'.tr,
                                  validator: bloc.validatorSwiftCode),
                              customTextFieldAddInformationBank(size,
                                  controller: controllerBankName,
                                  textInputType: TextInputType.text,
                                  maxLength: null,
                                  textInputAction: TextInputAction.next,
                                  focusNode: null,
                                  validator: bloc.validatorBankName,
                                  hintText: 'bank_name'.tr),
                              customTextFieldAddInformationBank(size,
                                  textInputType: TextInputType.text,
                                  controller: controllerGlobalName,
                                  validator: bloc.validatorBankName,
                                  maxLength: null,
                                  textInputAction: TextInputAction.done,
                                  focusNode: null,
                                  hintText: 'global_name'.tr),
                              customTextFieldAddInformationBank(size,
                                  controller: controllerBankBranchName,
                                  textInputType: TextInputType.text,
                                  maxLength: null,
                                  textInputAction: TextInputAction.next,
                                  focusNode: null,
                                  validator: bloc.validatorBranchBankName,
                                  hintText: 'bank_branch_name'.tr),
                              customTextFieldAddInformationBank(size,
                                  controller: controllerBankBranchCity,
                                  textInputType: TextInputType.text,
                                  maxLength: null,
                                  validator: bloc.validatorBranchBankCity,
                                  textInputAction: TextInputAction.next,
                                  focusNode: null,
                                  hintText: 'bank_branch_city'.tr),
                              customTextFieldAddInformationBank(size,
                                  textInputType: TextInputType.text,
                                  controller: controllerBankBranchAddress,
                                  maxLength: null,
                                  textInputAction: TextInputAction.next,
                                  focusNode: null,
                                  validator: bloc.validatorBranchBankAddress,
                                  hintText: 'bank_branch_address'.tr),
                              Container(
                                width: size.width,
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey)),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    hint: Text('select_country_id'.tr),
                                    items: state.countries.map((e) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          '(${e.id}) ${e.name}',
                                          style: body1.copyWith(fontSize: 14),
                                        ),
                                        value: e.id,
                                      );
                                    }).toList(),
                                    validator: (value) => value == null
                                        ? 'please_select_country_id'.tr
                                        : null,
                                    onChanged: (value) {
                                      controllerCountry.text = value.toString();
                                    }),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50.0)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ButtonTransferWidget(
            onPress: () {
              if (_formKey.currentState.validate()) {
                bloc.handleAddBank(
                  accountName: controllerAccountName.text,
                  accountNumber: controllerAccountNumber.text,
                  bankBranchAddress: controllerBankBranchAddress.text,
                  bankBranchCity: controllerBankBranchCity.text,
                  bankBranchName: controllerBankBranchName.text,
                  bankName: controllerBankName.text,
                  country: controllerCountry.text,
                  globalName: controllerGlobalName.text,
                  swiftCode: controllerSwiftCode.text,
                );
              }
            },
            size: size,
            titleButton: 'add_bank'.tr.toUpperCase(),
          )
        ],
      ),
    );
  }

  Widget customTextFieldAddInformationBank(Size size,
      {String hintText,
      TextEditingController controller,
      TextInputAction textInputAction,
      Function validator,
      int maxLength,
      TextInputType textInputType,
      FocusNode focusNode,
      bool showSuffixIcon = false,
      Function onPressSuffixIcon,
      TextCapitalization textCapitalization}) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          width: size.width,
          //height: 45.0,
          margin: EdgeInsets.only(bottom: 20.0),
          child: TextFormField(
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            focusNode: focusNode,
            keyboardType: textInputType,
            maxLength: maxLength,
            autocorrect: false,
            enableSuggestions: false,
            textAlign: TextAlign.left,
            textInputAction: textInputAction,
            textAlignVertical: TextAlignVertical.bottom,
            controller: controller,
            validator: validator ??
                (value) {
                  return null;
                },
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 10.0),
              hintText: hintText,
              hintStyle: TextStyle(color: colorGrey.withOpacity(0.5)),
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
        if (showSuffixIcon)
          GestureDetector(
            onTap: () {
              if (onPressSuffixIcon != null) {
                onPressSuffixIcon();
              }
            },
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: colorGrey.withOpacity(0.5))),
              child: Center(child: Text('?', style: body1)),
            ),
          )
      ],
    );
  }

  @override
  dynamic dispose() {
    controllerGlobalName.dispose();
    controllerAccountName.dispose();
    controllerAccountNumber.dispose();
    controllerSwiftCode.dispose();
    controllerBankName.dispose();
    controllerBankBranchName.dispose();
    controllerBankBranchCity.dispose();
    controllerBankBranchAddress.dispose();
    controllerCountry.dispose();
    return super.dispose();
  }
}
