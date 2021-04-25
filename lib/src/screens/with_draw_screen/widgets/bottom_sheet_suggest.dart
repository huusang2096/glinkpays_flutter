import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

void showBottomSheetSuggest(BuildContext context, Size size,
    {double width,
    double height,
    String suggestText,
    bool isSuggestAccountNumber = false,
    Color colorCardNumber = colorWhite,
    Color colorCardDate = colorWhite,
    Color colorCardName = colorWhite,
    Color colorCardTitle = colorWhite}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: width,
          height: height,
          color: colorWhite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(suggestText, style: body1),
              ),
              buildFrontLayoutCard(size, isSuggestAccountNumber,
                  colorCardNumber: colorCardNumber,
                  colorCardDate: colorCardDate,
                  colorCardName: colorCardName,
                  colorCardTitle: colorCardTitle)
            ],
          ),
        );
      });
}

Widget buildFrontLayoutCard(Size size, bool isSuggestAccountNumber,
    {Color colorCardNumber,
    Color colorCardDate,
    Color colorCardName,
    Color colorCardTitle}) {
  return Container(
    width: size.width * 0.7,
    height: size.height * 0.25,
    decoration: BoxDecoration(
        color: colorBackgroundAppBar.withOpacity(0.8),
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    padding: EdgeInsets.only(top: 14.0, right: 10.0, left: 10.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Card',
                    style: TextStyle(
                        package: 'awesome_card',
                        color: colorCardTitle,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'MavenPro',
                        fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'images/contactless_icon.png',
                    fit: BoxFit.fitHeight,
                    width: 25.0,
                    height: 25.0,
                    color: Colors.amberAccent,
                    package: 'awesome_card',
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: isSuggestAccountNumber
                      ? Text.rich(TextSpan(children: [
                          WidgetSpan(
                              child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '9704',
                              style: TextStyle(
                                  package: 'awesome_card',
                                  color: colorCardNumber,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'MavenPro',
                                  fontSize: 20),
                            ),
                            width: 60,
                          )),
                          WidgetSpan(
                            child: Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.orange)),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                '1234 5678 91',
                                style: TextStyle(
                                    package: 'awesome_card',
                                    color: colorCardNumber,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'MavenPro',
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          WidgetSpan(
                              child: Container(
                            width: 30,
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '01',
                              style: TextStyle(
                                  package: 'awesome_card',
                                  color: colorCardNumber,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'MavenPro',
                                  fontSize: 20),
                            ),
                          ))
                        ]))
                      : Text(
                          '9704 1234 5678 9101',
                          style: TextStyle(
                              package: 'awesome_card',
                              color: colorCardNumber,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'MavenPro',
                              fontSize: 20),
                        ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Exp. Date  01/22',
                    style: TextStyle(
                        package: 'awesome_card',
                        color: colorCardDate,
                        fontFamily: 'MavenPro',
                        fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text('Nguyen Van A',
                      maxLines: 3,
                      style: TextStyle(
                          package: 'awesome_card',
                          color: colorCardName,
                          fontFamily: 'MavenPro',
                          fontSize: 18)),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
