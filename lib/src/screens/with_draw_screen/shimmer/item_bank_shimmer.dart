import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class ItemBankShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
          top: BorderSide(width: 0.5, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: colorGrey300,
                    highlightColor: colorGrey100,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: colorWhite,
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(18)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Shimmer.fromColors(
                      baseColor: colorGrey300,
                      highlightColor: colorGrey100,
                      child: Container(
                        color: colorWhite,
                        child: Text(
                          '**** *********}',
                          overflow: TextOverflow.ellipsis,
                          style: body1.copyWith(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Icon(Icons.arrow_right, color: Colors.grey)
        ],
      ),
    );
  }
}
