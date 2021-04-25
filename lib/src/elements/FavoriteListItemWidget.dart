import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/favorite.dart';
import 'package:vipay/src/models/route_argument.dart';

// ignore: must_be_immutable
class FavoriteListItemWidget extends StatelessWidget {
  String heroTag;
  Favorite favorite;

  FavoriteListItemWidget({Key key, this.heroTag, this.favorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      focusColor: Theme.of(context).accentColor,
      highlightColor: Theme.of(context).primaryColor,
      onTap: () {
        Navigator.of(context).pushNamed('/Food',
            arguments: RouteArgument(
                heroTag: heroTag, id: favorite.food.id.toString()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.9),
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).focusColor.withOpacity(0.1),
                blurRadius: 5,
                offset: Offset(0, 2)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: heroTag + favorite.food.id.toString(),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          (favorite?.food?.media?.isEmpty ?? true)
                              ? ''
                              : favorite.food.media.first.thumb ?? ''),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(width: 15),
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          favorite.food.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.subhead,
                        ),
                        Text(
                          favorite.food.restaurant.name,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Helper.getPrice(favorite.food.price.toDouble(),
                      style: Theme.of(context).textTheme.display1),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
