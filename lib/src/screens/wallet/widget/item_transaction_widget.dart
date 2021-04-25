import 'package:flutter/material.dart';
import 'package:vipay/src/models/TransactionResponse.dart';
import 'package:vipay/src/widgets/dotted_line.dart';
import 'package:simplest/simplest.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionModel item;
  final Function(TransactionModel) onSelect;

  const TransactionItemWidget(
      {Key key, @required this.item, @required this.onSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('###,###.#', 'en');
    return InkWell(
        onTap: () => onSelect(item),
        child: Column(children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 16, bottom: 8, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        (item.endUserFName == null
                                ? item.userFName.toUpperCase()
                                : item.endUserFName.toUpperCase()) +
                            " " +
                            (item.endUserLName == null
                                ? item.userLName.toUpperCase()
                                : item.endUserLName.toUpperCase()),
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color(0xFF4F4F4F))),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset(double.parse(item.total) > 0
                            ? 'assets/images/increment.svg'
                            : 'assets/images/decerment.svg'),
                        SizedBox(width: 5),
                        Text(
                          item.transactionType.toLowerCase().tr,
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFF4F4F4F)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/clock.svg'),
                          SizedBox(width: 3),
                          Text(
                            item.tCreatedAt,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        formatter.format(double.parse(item.total)) +
                            ' ' +
                            item.currCode,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: double.parse(item.total) > 0
                                ? Color(0xFF87D65A)
                                : Color(0xFFF90000).withOpacity(0.85)),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          DottedLine(
            color: Colors.grey,
            height: 1,
          )
        ]));
  }
}
