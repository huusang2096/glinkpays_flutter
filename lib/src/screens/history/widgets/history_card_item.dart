import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/history/history_response.dart';
import 'package:vipay/route_generator.dart';

class HistoryCartItemWidget extends StatelessWidget {
  final History item;
  Color _statusColor;
  DateFormat format = DateFormat('dd-MM-yyyy');

  HistoryCartItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    double value = item?.total?.parseDouble() ?? 0.0;
    value > 0 ? _statusColor = green1 : _statusColor = redColor;
    value.toStringAsFixed(1);
    String _sendFullName = '${item?.userFName ?? ''} ${item?.userLName ?? ''}';
    String _endFullName =
        '${item?.endUserFName ?? ''} ${item?.endUserLName ?? ''}';
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: InkWell(
              onTap: () => navigator.pushNamed(
                  RouteGenerator.walletShowDetailTransaction,
                  arguments: {'idTransaction': item.id}),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: CachedNetworkImage(
                      imageUrl: item?.endUserPhoto ?? '',
                      height: 60.0,
                      width: 60.0,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) =>
                          Images.defaultAvatar.loadImage(size: 60.0),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$_endFullName',
                          style: body1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${item.transactionType.toLowerCase().tr}  $_endFullName',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          //Chang to note in here
                          item.status.toLowerCase().tr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.watch_later_outlined),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            '${item?.tCreatedAt ?? ''}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${value.toPrecision(2)} ${item?.currSymbol ?? 'USD'}',
                            style: TextStyle(color: _statusColor),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                        ],
                      ), // + USD get from database,
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

// return SizedBox(
//       width: double.infinity,
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 10.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Flexible(
//                     flex: 1,
//                     child: Row(
//                       children: [
//                         ClipOval(
//                           child: CachedNetworkImage(
//                             imageUrl: item.endUserPhoto,
//                             height: 60.0,
//                             width: 60.0,
//                             errorWidget: (context,url,error) => Images.defaultAvatar.loadImage(size: 60.0),
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 5.0,
//                         ),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 _endFullName,
//                                 style: TextStyle(color: lightBlueColor300),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               SizedBox(
//                                 height: 5.0,
//                               ),
//                               Text(
//                                 'noi dung giao dich',
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Flexible(
//                     flex: 1,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Icon(Icons.watch_later_outlined),
//                             SizedBox(
//                               width: 2.0,
//                             ),
//                             Text(
//                               '${item?.tCreatedAt ?? ''}',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 5.0,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Text(
//                               '100 ${item?.currSymbol ?? 'USD'}',
//                               style: TextStyle(color: _statusColor),
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             SizedBox(width: 5.0,),
//                           ],
//                         ), // + USD get from database,
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10.0,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
