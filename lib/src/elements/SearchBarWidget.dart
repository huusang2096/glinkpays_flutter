import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/SearchVoucher');
//        Navigator.of(context).push(SearchModal());
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Theme.of(context).focusColor.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 0),
              child: Icon(Icons.search, color: Theme.of(context).accentColor),
            ),
            Text(
              'search_for_store_or_foods'.tr,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .merge(TextStyle(fontSize: 14)),
            )
          ],
        ),
      ),
    );
  }
}
