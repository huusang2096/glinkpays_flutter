import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class ReviewsWidget extends StatelessWidget {
  final Size size;
  final List<FoodReview> foodReviews;
  ReviewsWidget({this.size,this.foodReviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      width: size.width,
      padding: EdgeInsets.only(left: 12.0, top: 12.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSvgIconAndTitle(
            pathSVG: 'assets/svg/startCicle.svg',
            textWidget: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'reviews'.tr,
                    style: title.copyWith(color: colorTitle),
                  ),
                  TextSpan(
                    text: ' (${foodReviews.length})',
                    style: title.copyWith(color: Colors.grey, fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          foodReviews.isNotEmpty
              ? ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final foodReview = foodReviews[index];
                    final user = foodReviews[index]?.user;
                    final hasDataUser = user != null ? true : false;
                    return _buildItemList(
                        callBackRating: (rating) {},
                        comment:
                            Helper.skipHtml(foodReviews[index]?.review ?? ''),
                        initialRating: foodReview?.rate?.toDouble() ?? 0.0,
                        pathSvgAvatar: 'assets/svg/avatar_icon.svg',
                        userName: hasDataUser
                            ? '${user.firstName ?? ''} ${user.lastName ?? ''}'
                            : '');
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                          top: 7.0, bottom: 7.0, right: 10.0, left: 70.0),
                      child: DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.black,
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapColor: Colors.transparent,
                        dashGapRadius: 0.0,
                      ),
                    );
                  },
                  itemCount: foodReviews.length)
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'there_are_currently_no_reviews_for_this_product'.tr,
                    style: body2.copyWith(color: Colors.grey),
                    textAlign: TextAlign.justify,
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildItemList(
      {String pathSvgAvatar,
      userName,
      comment,
      double initialRating,
      Function(double) callBackRating}) {
    return Container(
      width: size.width,
      padding: EdgeInsets.only(right: 10.0),
      child: Row(
        children: [
          SvgPicture.asset(
            pathSvgAvatar,
            width: 60.0,
            height: 60.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName, style: body2.copyWith(color: Colors.grey)),
                  RatingBar.builder(
                    itemSize: 21,
                    initialRating: initialRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.only(right: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      callBackRating(rating);
                    },
                  ),
                  Text(
                    comment,
                    textAlign: TextAlign.justify,
                    style: body2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
