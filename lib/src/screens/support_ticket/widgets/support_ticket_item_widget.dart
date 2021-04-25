import 'package:flutter/material.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/support_ticket/ticket_response.dart';
import 'package:simplest/simplest.dart';

class SupportTicketItemWidget extends StatelessWidget {
  final TicketResponse response;
  final Size size;

  SupportTicketItemWidget({this.response, this.size});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = response.data[index];
        return GestureDetector(
          onTap: () {
            navigator.pushNamed(RouteGenerator.supportTicketDetailScreen,
                arguments: {'ticket': response.data[index]});
          },
          behavior:
              HitTestBehavior.translucent, //onTap when Container under Stack
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          '${'subject'.tr}:   ',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            Helper.skipHtml(item?.subject ?? ''),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          '${'message'.tr}:',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            Helper.skipHtml(item?.message ?? ''),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: response.data.length,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10.0,
        );
      },
    );
  }
}
