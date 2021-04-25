import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:simplest/simplest.dart';

class IntroduceWidget extends StatelessWidget {
  final String titleText;
  final String ratingText;
  final String descriptionText;
  final List<String> listUrl;
  final Size size;

  IntroduceWidget(
      {this.titleText,
      this.ratingText,
      this.descriptionText,
      this.listUrl,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      width: size.width,
      color: colorWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child:
                      Text(titleText, style: title.copyWith(color: colorTitle)),
                ),
              ),
              SizedBox(width: 5.0),
              Container(
                width: 75.0,
                padding: EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(
                    color: Color(0xff29B0B4),
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: AutoSizeText(
                          ratingText,
                          style:
                              title.copyWith(color: colorWhite, fontSize: 17.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.star,
                          color: Color(0xffFDEA3D),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            child: Text(
              descriptionText,
              textAlign: TextAlign.justify,
              style: body2,
            ),
          ),
          Container(
            width: size.width,
            height: 120.0,
            padding: EdgeInsets.only(left: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listUrl.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150,
                  height: 120,
                  child: Card(
                    elevation: 2.0,
                    child: buildCachedNetworkImage(
                        isBorderRadius: true,
                        imgUrl: listUrl[index],
                        width: 150.0,
                        height: 120.0),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 5.0,
          )
        ],
      ),
    );
  }
}
