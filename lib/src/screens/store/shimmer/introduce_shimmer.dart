import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simplest/simplest.dart';

class IntroduceShimmer extends StatelessWidget {
  final Size size;

  IntroduceShimmer({this.size});

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
          Shimmer.fromColors(
            baseColor: colorGrey300,
            highlightColor: colorGrey100,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: colorWhite,
                    margin: EdgeInsets.only(left: 12.0),
                    child: Text('The Coffee House',
                        style: title.copyWith(color: Colors.transparent)),
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
                            '5.0',
                            style: title.copyWith(
                                color: colorWhite, fontSize: 17.0),
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
          ),
          Shimmer.fromColors(
            baseColor: colorGrey300,
            highlightColor: colorGrey100,
            child: Container(
              color: colorWhite,
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
              child: Container(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'
                  ' Mollitia laborum numquam voluptatum dolor tempore possimus'
                  ' ut nam quam veritatis nemo repellendus sint deserunt!',
                  textAlign: TextAlign.justify,
                  style: body2.copyWith(color: Colors.transparent),
                ),
              ),
            ),
          ),
          Container(
            width: size.width,
            height: 120.0,
            padding: EdgeInsets.only(left: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: colorGrey300,
                  highlightColor: colorGrey100,
                  child: SizedBox(
                    width: 150,
                    height: 120,
                    child: Card(
                      elevation: 2.0,
                    ),
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
