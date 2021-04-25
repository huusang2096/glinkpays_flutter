import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/review.dart';

// ignore: must_be_immutable
class ReviewItemWidget extends StatelessWidget {
  Review review;

  ReviewItemWidget({Key key, this.review}) : super(key: key);

  _userImage() {
    return this.review.user.image == null || this.review.user.image == ""
        ? AssetImage('assets/images/if_1_avatar_2754574.png')
        : CachedNetworkImageProvider(this.review.user.image);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Wrap(
        direction: Axis.horizontal,
        runSpacing: 10,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image:
                      DecorationImage(image: _userImage(), fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 15),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            review.user.lastName,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                            maxLines: 2,
                            style: Theme.of(context).textTheme.title.merge(
                                TextStyle(color: Theme.of(context).hintColor)),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                          child: Chip(
                            padding: EdgeInsets.all(0),
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(review.rate,
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .merge(TextStyle(
                                            color: Theme.of(context)
                                                .primaryColor))),
                                Icon(
                                  Icons.star_border,
                                  color: Theme.of(context).primaryColor,
                                  size: 16,
                                ),
                              ],
                            ),
                            backgroundColor:
                                Theme.of(context).accentColor.withOpacity(0.9),
                            shape: StadiumBorder(),
                          ),
                        ),
                      ],
                    ),
//                    Text(
//                      review.user.bio.substring(0, min(30, review.user.bio.length)),
//                      overflow: TextOverflow.ellipsis,
//                      style: Theme.of(context).textTheme.caption,
//                    )
                  ],
                ),
              )
            ],
          ),
          HtmlWidget(review.review ?? ''),
        ],
      ),
    );
  }
}
