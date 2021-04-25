import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

class ExpansionWidget extends StatefulWidget {
  final Size size;

  const ExpansionWidget({Key key, this.size}) : super(key: key);

  @override
  _ExpansionWidgetState createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget> {
  bool collapse = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.5, color: colorGrey),
              top: BorderSide(width: 0.5, color: colorGrey),
            ),
          ),
          child: ExpansionPanelList(
            elevation: 0,
            expansionCallback: (int item, bool status) {
              setState(() {
                collapse = !collapse;
              });
            },
            animationDuration: Duration(milliseconds: 800),
            children: [
              ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: collapse,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Text(
                      'USDT',
                      style: body1.copyWith(color: colorGrey),
                    ),
                  );
                },
                body: Container(
                  margin: EdgeInsets.only(bottom: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 140,
                        height: 45,
                        child: _buildOutlineButton(
                          titleText: 'ERC20',
                          onPress: () {
                            print('on press ERC20');
                          },
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 45,
                        child: _buildOutlineButton(
                          titleText: 'TRC20',
                          onPress: () {
                            print('on press TRC20');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  OutlineButton _buildOutlineButton({String titleText, Function onPress}) {
    return OutlineButton(
      borderSide: BorderSide(width: 1, color: colorTitle),
      //  borderSide: BorderSide(color: colorTitle),
      onPressed: () {
        print('on press ERC20');
        onPress();
      },
      child: Text(
        titleText,
        style: body1.copyWith(color: Colors.lightGreen),
      ),
    );
  }
}
