import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class ItemContactTransferWidget extends StatelessWidget {
  final String imgAvatar;
  final String title;
  final String subTitle;
  final Size size;
  final Function onPress;
  ItemContactTransferWidget(
      {Key key,
      this.imgAvatar,
      this.title,
      this.subTitle,
      this.size,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onPress();
        },
        child: Container(
          child: Row(
            children: [
              SizedBox(width: 8.0),
              SizedBox(
                width: 60.0,
                height: 60.0,
                child: CircleAvatar(
                  child: Text(imgAvatar),
                ),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style:
                                body1.copyWith(color: colorBackgroundAppBar)),
                        SizedBox(height: 5.0),
                        Text(subTitle,
                            style: body2.copyWith(color: colorGrey),
                            maxLines: 2,
                            overflow: TextOverflow.clip)
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
