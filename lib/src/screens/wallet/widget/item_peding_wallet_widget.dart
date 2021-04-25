import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/pending_wallet_response.dart';
import 'package:vipay/src/widgets/dotted_line.dart';
import 'package:simplest/simplest.dart';

class PendingWalletItemWidget extends StatelessWidget {
  final PendingWallet item;

  const PendingWalletItemWidget({Key key, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('###,###.#', 'en');
    final dateFormat = DateFormat('dd-MM-yyyy');
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 8, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text((item.currency == null ? '' : item.currency.toUpperCase()),
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Color(0xFF4F4F4F))),
                SizedBox(height: 10),
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
                      Text(
                        '${'available_at'.tr}: ${dateFormat.format(dateFormatter.parse(item.availableAt))}',
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
                    '${formatter.format(item.balance)} ${item.currency}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF87D65A)),
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
    ]);
  }
}
