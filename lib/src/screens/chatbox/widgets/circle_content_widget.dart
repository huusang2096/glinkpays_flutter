import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:simplest/simplest.dart';

class CircleContentWidget extends StatelessWidget {
  String urlSvg, textBottom, userName;
  Function onPress;
  Size size;

  CircleContentWidget(
      {this.urlSvg, this.textBottom, this.userName, this.onPress, this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: [
            Container(
                width: size.width * 0.2,
                height: size.height * 0.2 - 20.0,
                decoration: BoxDecoration(
                    border: Border.all(color: colorTitle, width: 1.5),
                    color: urlSvg != null
                        ? colorTitle
                        : colorGrey.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: urlSvg != null
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SvgPicture.asset(
                          urlSvg,
                        ),
                      )
                    : Center(child: Text(userName, style: title))),
            Text(urlSvg != null ? textBottom : userName)
          ],
        ),
      ),
    );
  }
}
