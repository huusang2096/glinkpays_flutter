import 'package:awesome_card/awesome_card.dart';
import 'package:awesome_card/extra/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/deposit/cubit/deposit_add_card_cubit.dart';
import 'package:vipay/src/screens/deposit/models/stripe_payment_store_request_model.dart';

class DepositAddCardScreen
    extends CubitWidget<DepositAddCardCubit, DepositAddCardState> {
  final StripePaymentStoreRequest stripePaymentStoreRequest;

  DepositAddCardScreen({this.stripePaymentStoreRequest});

  static provider({StripePaymentStoreRequest stripePaymentStoreRequest}) {
    return BlocProvider(
        create: (context) => DepositAddCardCubit(),
        child: DepositAddCardScreen(
            stripePaymentStoreRequest: stripePaymentStoreRequest));
  }

  final TextEditingController controllerCardNumber = TextEditingController();
  final TextEditingController controllerCardHolderName =
      TextEditingController();
  final TextEditingController controllerExpiryMonth = TextEditingController();
  final TextEditingController controllerExpiryYear = TextEditingController();
  final TextEditingController controllerCvv = TextEditingController();
  bool showBack = false;

  final FocusNode _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void afterFirstLayout(BuildContext context) {
    intiData();
    _focusNode.addListener(() {
      bloc.handleShowBackCard(_focusNode);
    });
    super.afterFirstLayout(context);
  }

  void intiData() {
    if (stripePaymentStoreRequest != null) {
      bloc.initDataCard(
          controllerCardHolderName: controllerCardHolderName,
          controllerCardNumber: controllerCardNumber,
          controllerCvv: controllerCvv,
          controllerExpiryMonth: controllerExpiryMonth,
          controllerExpiryYear: controllerExpiryYear,
          stripePaymentStoreRequest: stripePaymentStoreRequest);
    }
  }

  @override
  Widget builder(BuildContext context, DepositAddCardState state) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(),
      body: buildBody(size, state),
    );
  }

  Widget buildBody(Size size, DepositAddCardState state) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CreditCard(
            cardNumber: controllerCardNumber.text,
            cardExpiry: controllerExpiryMonth.text,
            cardHolderName: controllerCardHolderName.text,
            cvv: controllerCvv.text,
            bankName: '',
            showBackSide: state.isShowBackCard,
            frontBackground: CardBackgrounds.black,
            backBackground: CardBackgrounds.white,
            showShadow: false,
            frontLayout: buildFrontLayoutCard(size),
            backLayout: buildBackLayoutCard(size),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    customTextField(
                        hintText: 'Card Number: 4242 4242 4242 4242',
                        controller: controllerCardNumber,
                        focusNode: null,
                        maxLength: 16,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.number,
                        validator: bloc.validateCardNumber),
                    customTextField(
                        hintText: 'Exp. Month: 01',
                        controller: controllerExpiryMonth,
                        focusNode: null,
                        maxLength: 2,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.number,
                        validatorDate: bloc.validateCardMonth),
                    customTextField(
                        hintText: 'Exp. Year: 2020',
                        controller: controllerExpiryYear,
                        focusNode: null,
                        maxLength: 4,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.number,
                        validatorDate: bloc.validateCardYear),
                    customTextField(
                        hintText: 'Card Name: Alex',
                        controller: controllerCardHolderName,
                        focusNode: null,
                        maxLength: 255,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.text,
                        validator: bloc.validateCardName),
                    customTextField(
                        hintText: 'CVV: 123',
                        controller: controllerCvv,
                        focusNode: _focusNode,
                        maxLength: 3,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.number,
                        validator: bloc.validateCardCvv),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0)
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          navigator.pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: colorWhite,
        ),
      ),
      backgroundColor: colorBackgroundAppBar,
      title: Text(
        'add_card'.tr,
        style: title.copyWith(color: colorWhite, fontSize: 18.0),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.done),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              bloc.onPressDone(
                  name: controllerCardHolderName.text,
                  cardNumber: controllerCardNumber.text,
                  cvc: controllerCvv.text,
                  month: controllerExpiryMonth.text,
                  year: controllerExpiryYear.text);
            }
          },
        )
      ],
    );
  }

  Widget buildBackLayoutCard(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: colorBackgroundAppBar.withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.black,
            height: 50,
            width: size.width,
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: size.width * 0.7,
                height: 50,
                color: Colors.grey,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    controllerCvv.text == null || controllerCvv.text.isEmpty
                        ? ''
                        : controllerCvv.text,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: colorWhite),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildFrontLayoutCard(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: colorBackgroundAppBar.withOpacity(0.8),
      padding: EdgeInsets.only(top: 14.0, right: 10.0, left: 10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: getCardTypeIcon(
                          cardNumber: controllerCardNumber.text)),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'images/contactless_icon.png',
                      fit: BoxFit.fitHeight,
                      width: 30.0,
                      height: 30.0,
                      color: Colors.amberAccent,
                      package: 'awesome_card',
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      controllerCardNumber.text == null ||
                              controllerCardNumber.text.isEmpty
                          ? 'XXXX XXXX XXXX XXXX'
                          : controllerCardNumber.text,
                      style: TextStyle(
                          package: 'awesome_card',
                          color: colorWhite,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'MavenPro',
                          fontSize: 22),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Exp. Date ${(controllerExpiryMonth.text == null || controllerExpiryMonth.text.isEmpty) && (controllerExpiryYear.text == null || controllerExpiryYear.text.isEmpty) ? "MM/YY" : controllerExpiryMonth.text + '/' + controllerExpiryYear.text}',
                      style: TextStyle(
                          package: 'awesome_card',
                          color: colorWhite,
                          fontFamily: 'MavenPro',
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12.0),
                    child: Text(
                        controllerCardHolderName.text == null ||
                                controllerCardHolderName.text.isEmpty
                            ? 'Card Name'
                            : controllerCardHolderName.text,
                        maxLines: 3,
                        style: TextStyle(
                            package: 'awesome_card',
                            color: colorWhite,
                            fontFamily: 'MavenPro',
                            fontSize: 20)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customTextField(
      {int maxLength,
      String hintText,
      TextInputAction textInputAction,
      TextInputType textInputType,
      FocusNode focusNode,
      TextEditingController controller,
      Function validator,
      Function validatorDate}) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        controller: controller,
        autocorrect: false,
        enableSuggestions: false,
        validator: (value) {
          if (validatorDate != null) {
            final result = validatorDate(
                value, controllerExpiryMonth.text, controllerExpiryYear.text);
            return result;
          }
          if (validator != null) {
            final result = validator(value);
            return result;
          }
          return null;
        },
        inputFormatters: <TextInputFormatter>[
          textInputType != TextInputType.text
              ? FilteringTextInputFormatter.allow(RegExp(r'[0-9/]'))
              : FilteringTextInputFormatter.allow(RegExp(r'[A-za-z ]')),
        ],
        decoration: InputDecoration(
          hintStyle: TextStyle(color: colorGrey.withOpacity(0.6)),
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
        maxLength: maxLength,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        onChanged: (value) {
          bloc.handleOnChangeTextField();
        },
        focusNode: focusNode,
      ),
    );
  }

  @override
  dynamic dispose() {
    _focusNode.dispose();
    controllerCardNumber.dispose();
    controllerCardHolderName.dispose();
    controllerExpiryMonth.dispose();
    controllerCvv.dispose();
    return super.dispose();
  }
}
