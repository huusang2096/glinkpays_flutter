import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(image: AssetImage('assets/img/user1.jpg'), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 15),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Dhaka, Store Dhaka',
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.chat,
                                size: 16,
                                color: Theme.of(context).accentColor.withOpacity(0.5),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2407',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              SizedBox(width: 15),
                              Icon(
                                Icons.access_time,
                                size: 16,
                                color: Theme.of(context).accentColor.withOpacity(0.5),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2407',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('5',
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .merge(TextStyle(color: Theme.of(context).primaryColor))),
                                Icon(
                                  Icons.star_border,
                                  color: Theme.of(context).primaryColor,
                                  size: 16,
                                ),
                              ],
                            ),
                            color: Theme.of(context).accentColor.withOpacity(0.9),
                            shape: StadiumBorder(),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
