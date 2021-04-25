import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';

class NavigationBar extends StatelessWidget {
  final Size size;
  final List<String> listTitle;
  final List<Function> listFunction;

  NavigationBar({Key key, this.size, this.listTitle, this.listFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      decoration: BoxDecoration(
          color: colorWhite,
          border: Border(bottom: BorderSide(color: colorGrey, width: 0.5))),
      child: Text.rich(
        TextSpan(
            children: listTitle
                .asMap()
                .map((key, value) {
                  return MapEntry(
                    key,
                    TextSpan(
                      //text: value,
                      children: [
                        TextSpan(
                          text: value,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              listFunction[key]();
                            },
                        ),
                        if (key < listTitle.length - 1)
                          TextSpan(text: '     >    ')
                      ],
                    ),
                  );
                })
                .values
                .toList()
            //children: generateTextSpan()
            // children: [
            //   TextSpan(
            //     text: listTitle[0],
            //     recognizer: TapGestureRecognizer()
            //       ..onTap = () {
            //         listFunction[0]();
            //       },
            //   ),
            //   TextSpan(
            //     text: '     >    ',
            //   ),
            //   TextSpan(
            //     text: listTitle[1],
            //     recognizer: TapGestureRecognizer()
            //       ..onTap = () {
            //         listFunction[1]();
            //       },
            //   ),
            // ],
            ),
      ),
    );
  }

  List<TextSpan> generateTextSpan() {
    List<TextSpan> listWidget = [];
    int temp = 0;
    int index = 0;

    listTitle.forEach((element) {
      print(index);
      listWidget.add(
        TextSpan(
          text: element,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              listFunction[index]();
            },
        ),
      );
      index++;
      if (temp < listTitle.length - 1) {
        listWidget.add(
          TextSpan(
            text: '     >    ',
          ),
        );
        temp++;
      }
    });

    return listWidget;
  }
}
