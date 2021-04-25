import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class StoreShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                ),
                Container(
                  width: double.infinity,
                  height: 10.0,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 10.0,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 10.0,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
