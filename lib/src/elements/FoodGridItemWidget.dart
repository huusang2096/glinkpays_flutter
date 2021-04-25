import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/models/food.dart';
import 'package:vipay/src/models/route_argument.dart';

class FoodGridItemWidget extends StatelessWidget {
  final String heroTag;
  final Food food;

  FoodGridItemWidget({Key key, this.heroTag, this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Theme.of(context).accentColor.withOpacity(0.08),
      onTap: () {
        Navigator.of(context).pushNamed('/Food',
            arguments: RouteArgument(heroTag: heroTag, id: food.id.toString()));
      },
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Hero(
                  tag: heroTag + food.id.toString(),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              (this.food?.media?.isEmpty ?? true)
                                  ? ''
                                  : this.food.media.first.thumb ?? ''),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                food.name,
                style: Theme.of(context).textTheme.body2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2),
              Text(
                food.restaurant.name,
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
//          Container(
//            margin: EdgeInsets.all(10),
//            width: 40,
//            height: 40,
//            child: FlatButton(
//              padding: EdgeInsets.all(0),
//              onPressed: () {},
//              child: Icon(
//                Icons.favorite,
//                color: Theme.of(context).primaryColor,
//                size: 24,
//              ),
//              color: Theme.of(context).accentColor.withOpacity(0.9),
//              shape: StadiumBorder(),
//            ),
//          ),
        ],
      ),
    );
  }
}
