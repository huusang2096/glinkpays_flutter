import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/elements/CircularLoadingWidget.dart';
import 'package:vipay/src/models/gallery.dart';

class GalleryItemWidget extends StatelessWidget {
  Gallery gallery;

  GalleryItemWidget({Key key, this.gallery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return gallery == null
        ? CircularLoadingWidget(height: 200)
        : Container(
            width: 250,
            margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                image: CachedNetworkImageProvider(gallery.image ?? ''),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).accentColor.withOpacity(0.1),
                    blurRadius: 15,
                    offset: Offset(0, 5)),
              ],
            ),
          );
  }
}
