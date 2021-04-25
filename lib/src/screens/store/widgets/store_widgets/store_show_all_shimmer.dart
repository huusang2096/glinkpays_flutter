import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/sale/widgets/item_list_sale_widget.dart';

class ShowAllStoreShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: SizedBox.expand(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  physics: BouncingScrollPhysics(),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        boxShadow: [
                          BoxShadow(
                            color: colorGrey.withOpacity(0.5),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 300,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('',
                                        style: title.copyWith(
                                            color: colorBackgroundAppBar)),
                                    SizedBox(height: 4.0),
                                    Text('', style: body1),
                                    SizedBox(height: 4.0),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.info,
                                          color: colorTitle,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            '',
                                            style: title.copyWith(
                                                color: colorTitle),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.0),
                                    Text(
                                      '',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        baseColor: colorGrey300,
        highlightColor: colorGrey100);
  }
}
