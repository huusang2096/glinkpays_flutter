import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmer extends StatelessWidget {
  double heightShimmer;
  double widthShimmer;

  HomeShimmer(this.heightShimmer, this.widthShimmer);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        itemBuilder: (_, __) => Container(
          height: heightShimmer,
          width: widthShimmer,
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
