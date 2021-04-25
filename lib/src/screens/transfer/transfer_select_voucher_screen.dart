import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/screens/my_voucher/widgets/dash_border_header_ticket.dart';
import 'package:vipay/src/screens/my_voucher/widgets/my_voucher_custom_ticker_header.dart';
import 'package:vipay/src/screens/my_voucher/widgets/my_voucher_custom_ticket.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/screens/transfer/cubit/transfer_select_voucher/transfer_select_voucher_cubit.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';

class TransferSelectVoucherScreen extends CubitWidget<
    TransferSelectVoucherCubit, TransferSelectVoucherState> {
  final TextEditingController _voucherController = TextEditingController();
  final String money;
  final UserSearchItem user;
  TransferSelectVoucherScreen(this.money, this.user);
  static BlocProvider<TransferSelectVoucherCubit> provider(
      MyVoucherOrder myVoucherOrder, String money, UserSearchItem user) {
    return BlocProvider(
        create: (context) => TransferSelectVoucherCubit(
              myVoucherOrder,
            ),
        child: TransferSelectVoucherScreen(money, user));
  }

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
    bloc.getMyVoucher();
  }

  @override
  Widget builder(BuildContext context, TransferSelectVoucherState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.data.isLoading,
      child: Scaffold(
        backgroundColor: colorWhite,
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: AppBarTransferSelectUserWidget(
            titleText: 'select_vipay_voucher'.tr,
            onPressIcon: () {
              navigator.pop();
            },
          ),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: SizedBox.expand(
              child: Column(
                children: [
                  // Container(
                  //   margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Padding(
                  //           padding:
                  //               const EdgeInsets.symmetric(horizontal: 8.0),
                  //           child: TextField(
                  //             textAlign: TextAlign.left,
                  //             textAlignVertical: TextAlignVertical.bottom,
                  //             textInputAction: TextInputAction.done,
                  //             autocorrect: false,
                  //             autofocus: false,
                  //             controller: _voucherController,
                  //             decoration: InputDecoration(
                  //               isDense: true,
                  //               prefixIcon: Container(
                  //                 padding: EdgeInsets.all(10.0),
                  //                 child: SvgPicture.asset(
                  //                   'assets/images/search.svg',
                  //                   color: colorGrey.withOpacity(0.6),
                  //                 ),
                  //               ),
                  //               contentPadding: EdgeInsets.only(
                  //                   top: 10.0, bottom: 10.0, left: 10.0),
                  //               hintStyle: TextStyle(
                  //                   color: colorGrey.withOpacity(0.5)),
                  //               hintText: 'nhap_voucher'.tr,
                  //               border: _outlineInputBorder(color: colorGrey),
                  //               focusedBorder: _outlineInputBorder(
                  //                   color: colorBackgroundAppBar),
                  //               errorBorder: _outlineInputBorder(),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  //         child: FlatButton(
                  //           child: Text('ap_dung'),
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(5.0),
                  //               side: BorderSide(color: colorBackgroundAppBar)),
                  //           onPressed: () {
                  //             print('textf');
                  //           },
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Expanded(
                    child: Container(
                      child: !state.data.isLoadingShimmer
                          ? state.data.myVoucherResponse.data.isEmpty
                              ? Center(
                                  child: Text(
                                    'currently_no_voucher'.tr,
                                    style: body1,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              : ListView.separated(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  physics: BouncingScrollPhysics(),
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: 4.0);
                                  },
                                  itemBuilder: (context, index) {
                                    return _itemVoucher(
                                        item: state
                                            .data.myVoucherResponse.data[index],
                                        size: size,
                                        state: state);
                                  },
                                  itemCount:
                                      state.data.myVoucherResponse.data.length,
                                )
                          : ListView.separated(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              physics: BouncingScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 4.0);
                              },
                              itemBuilder: (context, index) {
                                return _itemShimmer(size);
                              },
                              itemCount: 2,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _itemVoucher(
      {MyVoucherOrder item, Size size, TransferSelectVoucherState state}) {
    String date = item.expiryDate == null
        ? ''
        : DateFormat.yMd().add_jm().format(item.expiryDate);
    return InkWell(
      onTap: () => bloc.checkVoucher(item, money,user),
      child: Container(
        color: state.data.selectedItem != null
            ? state.data.selectedItem.id == item.id
                ? colorBackgroundAppBar.withOpacity(0.4)
                : Colors.transparent
            : Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: FlutterTicketHeaderWidget(
                  color: appBarColor,
                  width: size.width,
                  height: size.height / 6.0,
                  child: DashBorderHeaderTicket(
                    color: appBarColor,
                    height: size.height / 6.0,
                    width: size.width,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: AutoSizeText(
                                    'sale'.tr,
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 10.0),
                                  child: AutoSizeText(
                                    '${item.food?.discountPrice ?? 0}%',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: FlutterTicketWidget(
                  width: size.width,
                  height: size.height / 6.0,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${item.food.restaurant?.name ?? ''}'
                                  .toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: green1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              Helper.skipHtml(item.food?.description ?? ''),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(fontSize: 13.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'exp'.tr + ': $date',
                              style: TextStyle(
                                color: redColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemShimmer(Size size) {
    return Shimmer.fromColors(
      baseColor: colorGrey300,
      highlightColor: colorGrey100,
      child: Container(
        color: colorWhite,
        width: size.width,
        height: size.height / 6.0,
      ),
    );
  }
  // OutlineInputBorder _outlineInputBorder(
  //     {Color color = Colors.redAccent, double width = 1.0}) {
  //   return OutlineInputBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(
  //       5.0,
  //     )),
  //     borderSide: BorderSide(color: color, width: width),
  //   );
  // }

  @override
  dynamic dispose() {
    _voucherController.dispose();
    return super.dispose();
  }
}
