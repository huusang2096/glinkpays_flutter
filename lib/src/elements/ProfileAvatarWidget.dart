import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/models/user.dart';

class ProfileAvatarWidget extends StatelessWidget {
  final User user;
  ProfileAvatarWidget({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 160,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 50,
                height: 50,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Icon(Icons.add, color: Theme.of(context).primaryColor),
                  color: Theme.of(context).accentColor,
                  shape: StadiumBorder(),
                ),
              ),
              SizedBox(
                width: 135,
                height: 135,
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user.image ?? ''),
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child:
                      Icon(Icons.chat, color: Theme.of(context).primaryColor),
                  color: Theme.of(context).accentColor,
                  shape: StadiumBorder(),
                ),
              ),
            ],
          ),
        ),
        Text(
          user.lastName,
          style: Theme.of(context).textTheme.headline,
        ),
        Text(
          user.email,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
