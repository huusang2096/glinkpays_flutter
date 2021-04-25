import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/notification_response.dart';

class NotificationDetailScreen extends StatelessWidget {
  final NotificationItem notificationData;

  const NotificationDetailScreen({Key key, this.notificationData})
      : super(key: key);

  static provider({NotificationItem notification}) {
    return NotificationDetailScreen(
      notificationData: notification,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('notification_detail'.tr)),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Text(
                  'notification_id'.tr + ': ${notificationData.id}',
                  style: heading18Black,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'title'.tr + ' : ',
                    style: body1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      notificationData.title,
                      style: body1,
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  Text(
                    'subtitle'.tr + ' : ',
                    style: body1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      notificationData.subtitle,
                      style: body1,
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'content'.tr + ' :',
                  style: body1.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Center(
                  child: notificationData.content == null
                      ? Text(
                          'empty_content'.tr,
                          style: body1,
                        )
                      : HtmlWidget(notificationData.content),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
