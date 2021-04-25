import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/media.dart';
import 'package:vipay/src/models/support_ticket/ticket_response.dart';
import 'package:simplest/simplest.dart';

class SupportTicketDetailScreen extends StatelessWidget {
  final Ticket ticket;

  SupportTicketDetailScreen({this.ticket});
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('support_ticket_detail'.tr),
        centerTitle: true,
      ),
      body: Container(
        height: _size.height,
        width: _size.width,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 15.0,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.report_problem,
                              color: Color(0xFF239EA1),
                              size: 30,
                            ),
                            SizedBox(width: 20.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText('${ticket?.subject ?? ''}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5.0),
                                  Text(
                                    '${'code_ticket'.tr}: ${ticket?.code ?? ''}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        _buildRowItemDetail(
                            title: 'time',
                            text: dateFormatter
                                .format(ticket?.lastReply ?? DateTime.now())),
                        _buildRowItemDetail(
                            title: 'message', text: ticket?.message ?? ''),
                        _buildRowItemDetail(
                            title: 'status',
                            text: ticket?.status?.name ?? 'responding'.tr),
                        SizedBox(height: 5.0),
                      ],
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

  Widget _buildRowItemDetail({String title, String text}) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.tr),
          SizedBox(width: 5.0),
          Expanded(
            child: AutoSizeText(
              text,
              textAlign: TextAlign.end,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
