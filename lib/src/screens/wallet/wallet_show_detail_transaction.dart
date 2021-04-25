import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/screens/wallet/cubit/wallet_detail_transaction_cubit.dart';

class WalletShowDetailTransaction extends CubitWidget<
    WalletDetailTransactionCubit, WalletDetailTransactionState> {
  final int idTransaction;

  static BlocProvider<WalletDetailTransactionCubit> provider(
      {int idTransaction}) {
    return BlocProvider(
      create: (context) => WalletDetailTransactionCubit(),
      child: WalletShowDetailTransaction(
        idTransaction: idTransaction,
      ),
    );
  }

  WalletShowDetailTransaction({this.idTransaction});

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.fetchDetailTransaction(idTransaction);
    print(idTransaction);
    super.afterFirstLayout(context);
  }

  final textStyleShimmer = TextStyle(color: Colors.transparent);
  final double fontSizeTitle = 12.0;

  @override
  Widget builder(BuildContext context, WalletDetailTransactionState state) {
    final Size size = MediaQuery.of(context).size;
    final data = state.data;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: AppBarTransferSelectUserWidget(
          titleText: 'transaction_details'.tr,
          onPressIcon: () {
            navigator.pop();
          },
        ),
      ),
      body: _buildBody(size, data, state),
    );
  }

  Widget _buildBody(Size size, DetailTransactionData data,
      WalletDetailTransactionState state) {
    return SafeArea(
      child: SizedBox.expand(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: size.width,
                color: colorWhite,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    Text('transaction_amount'.tr, style: body1),
                    SizedBox(height: 5.0),
                    data.isLoading
                        ? buildShimmerWidget(
                            Text(
                              '-200,000 VND',
                              style: textStyleShimmer.copyWith(
                                  fontSize: 22.0, fontWeight: FontWeight.w600),
                            ),
                          )
                        : Text(
                            bloc.handleTotal(),
                            style: body1.copyWith(
                                fontSize: 22.0, fontWeight: FontWeight.w600),
                          )
                  ],
                ),
              ),
              Container(
                color: colorWhite,
                width: size.width,
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildAccountWidget(
                        title: 'trading_account'.tr,
                        accountName:
                            data.transactionDetailResponse.isNullOrBlank
                                ? ' '
                                : data.transactionDetailResponse.data.user
                                        .isNullOrBlank
                                    ? ''
                                    : ((data.transactionDetailResponse.data.user
                                                ?.lastName ??
                                            ' ') +
                                        ' ' +
                                        (data.transactionDetailResponse.data
                                                .user?.firstName ??
                                            ' ')),
                        showLoading: state.data.isLoading),
                    buildAccountWidget(
                        title: 'from_the_account'.tr,
                        accountName:
                            data.transactionDetailResponse.isNullOrBlank
                                ? ' '
                                : data.transactionDetailResponse.data.endUser
                                        .isNullOrBlank
                                    ? ' '
                                    : ((data.transactionDetailResponse.data
                                                .endUser?.lastName ??
                                            ' ') +
                                        ' ' +
                                        (data.transactionDetailResponse.data
                                                .endUser?.firstName ??
                                            ' ')),
                        showLoading: state.data.isLoading,
                        showWidget: bloc.isShowAccountTo()),
                    Container(
                      child: Column(
                        children: [
                          buildItemRowShimmer(
                              textLeft: 'implementation_date'.tr,
                              textRight:
                                  data.transactionDetailResponse.isNullOrBlank
                                      ? ' '
                                      : data.transactionDetailResponse.data
                                              .isNullOrBlank
                                          ? ' '
                                          : data.transactionDetailResponse.data
                                                  ?.tCreatedAt ??
                                              ' ',
                              showLoading: state.data.isLoading),
                          buildItemRowShimmer(
                              textLeft: 'trading_code'.tr,
                              textRight:
                                  data.transactionDetailResponse.isNullOrBlank
                                      ? ' '
                                      : data.transactionDetailResponse.data
                                              .isNullOrBlank
                                          ? ' '
                                          : data.transactionDetailResponse.data
                                                  ?.transactionId ??
                                              ' ',
                              showLoading: state.data.isLoading),
                          buildItemRowShimmer(
                              textLeft: 'category'.tr,
                              textRight:
                                  data.transactionDetailResponse.isNullOrBlank
                                      ? ' '
                                      : data.transactionDetailResponse.data
                                              .isNullOrBlank
                                          ? ' '
                                          : data.transactionDetailResponse.data
                                                  ?.type ??
                                              ' ',
                              showLoading: state.data.isLoading),
                          buildItemRowShimmer(
                              textLeft: 'description_transaction'.tr,
                              textRight:
                                  data.transactionDetailResponse.isNullOrBlank
                                      ? ' '
                                      : data.transactionDetailResponse.data
                                              .isNullOrBlank
                                          ? ' '
                                          : (data.transactionDetailResponse.data
                                                  ?.description ??
                                              ' '),
                              showLoading: state.data.isLoading),
                          buildItemRowShimmer(
                              textLeft: 'status'.tr,
                              textRight:
                                  data.transactionDetailResponse.isNullOrBlank
                                      ? ' '
                                      : data.transactionDetailResponse.data
                                              .isNullOrBlank
                                          ? ' '
                                          : data.transactionDetailResponse.data
                                                  ?.status ??
                                              ' ',
                              showLoading: state.data.isLoading)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAccountWidget(
      {String title,
      String accountName,
      bool showLoading,
      bool showWidget = true}) {
    return showWidget
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child:
                    Text(title, style: body1.copyWith(fontSize: fontSizeTitle)),
              ),
              showLoading
                  ? buildShimmerWidget(
                      Text(
                        'NGUYEN VAN A',
                        style: textStyleShimmer,
                      ),
                    )
                  : Text(
                      accountName,
                      style: body1,
                    ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(
                  indent: 15.0,
                  endIndent: 15.0,
                  height: 1,
                  color: colorBackgroundAppBar.withOpacity(0.5),
                ),
              ),
            ],
          )
        : SizedBox.shrink();
  }

  Padding buildItemRowShimmer(
      {String textRight, String textLeft, bool showLoading}) {
    final Color colorRightText =
        textRight == TypeTransaction.SUCCESS ? colorTitle : Colors.black;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Expanded(
              child: Text(textLeft,
                  style: body1.copyWith(fontSize: fontSizeTitle))),
          Expanded(
            child: showLoading
                ? buildShimmerWidget(
                    Text('buildShimmerWidget',
                        textAlign: TextAlign.right, style: body1),
                  )
                : Text(textRight,
                    textAlign: TextAlign.right,
                    style: body1.copyWith(color: colorRightText)),
          ),
        ],
      ),
    );
  }

  Widget buildShimmerWidget(Widget widget) {
    return Shimmer.fromColors(
        baseColor: colorGrey300,
        highlightColor: colorGrey100,
        child: Container(color: colorWhite, child: widget));
  }
}
