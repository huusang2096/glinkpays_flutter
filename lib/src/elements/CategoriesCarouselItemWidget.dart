import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/models/category.dart';
import 'package:vipay/src/models/route_argument.dart';

// ignore: must_be_immutable
class CategoriesCarouselItemWidget extends StatelessWidget {
  double marginLeft;
  CategoryResponse category;
  CategoriesCarouselItemWidget({Key key, this.marginLeft, this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor.withOpacity(0.08),
      highlightColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pushNamed(RouteGenerator.storeShowAll,
            arguments: RouteArgument(id: category.id.toString()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: category.id,
            child: Container(
              margin: EdgeInsets.only(left: this.marginLeft, right: 20),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Theme.of(context).accentColor),
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: CachedNetworkImage(
                    imageUrl: category.media.first.url ?? '',
                    color: Theme.of(context).scaffoldBackgroundColor,
                  )),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: this.marginLeft, right: 20),
            child: Text(
              category.name,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.body1,
            ),
          ),
        ],
      ),
    );
  }
}
