import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/restaurant.dart';
import 'package:vipay/src/models/route_argument.dart';

class GridItemWidget extends StatelessWidget {
  final Restaurant restaurant;
  final String heroTag;

  GridItemWidget({Key key, this.restaurant, this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Theme.of(context).accentColor.withOpacity(0.08),
      onTap: () {
        Navigator.of(context).pushNamed('/Details',
            arguments:
                RouteArgument(id: restaurant.id.toString(), heroTag: heroTag));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10, bottom: 10),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).focusColor.withOpacity(0.05),
                  offset: Offset(0, 5),
                  blurRadius: 5)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Container(
                  child: Hero(
                    tag: heroTag + restaurant.id.toString(),
                    child: CachedNetworkImage(
                      imageUrl: (restaurant?.media?.isEmpty ?? true)
                          ? ''
                          : restaurant.media.first.thumb,
                      fit: BoxFit.cover,
                      height: 100,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      restaurant?.name ?? '',
                      style: Theme.of(context).textTheme.body1,
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: Helper.getStarsList(
                          double.parse(restaurant?.rate ?? '0')),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
