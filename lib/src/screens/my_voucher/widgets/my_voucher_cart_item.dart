import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:vipay/src/screens/my_voucher/widgets/dash_border_header_ticket.dart';
import 'package:vipay/src/screens/my_voucher/widgets/my_voucher_custom_ticker_header.dart';
import 'package:vipay/src/screens/my_voucher/widgets/my_voucher_custom_ticket.dart';
import 'package:simplest/simplest.dart';

class MyVoucherCustomItemCardWidget extends StatelessWidget {
  final MyVoucherOrder item;
  Color statusColor;
  DateFormat format = DateFormat('dd/MM/yyyy');
  DateTime dateTime;
  String date;

  MyVoucherCustomItemCardWidget(this.item);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    dateTime = item?.expiryDate;
    date = format.format(dateTime ?? DateTime(1999));

    return GestureDetector(
      onTap: () {
        navigator.pushNamed(RouteGenerator.useMyVoucherScreen,
            arguments: {'item': item});
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: FlutterTicketHeaderWidget(
                color: appBarColor,
                width: _size.width,
                height: _size.height / 6.0,
                child: DashBorderHeaderTicket(
                  color: appBarColor,
                  height: _size.height / 6.0,
                  width: _size.width,
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
                width: _size.width,
                height: _size.height / 6.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${item.food.restaurant?.name ?? ''}'.toUpperCase(),
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
                          date.contains('01/01/1999')
                              ? Text(
                                  'exp'.tr,
                                  style: TextStyle(
                                    color: redColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                )
                              : Text(
                                  'HSD :'.tr + ' ${date ?? ''}',
                                  style: TextStyle(
                                    color: redColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),
                                ),
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
    );
  }
}
