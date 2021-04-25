import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/image_selected_model.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';

class CachedImageItemWidget extends StatefulWidget {
  String imgUrl;
/*
  final Function(ImageSelect) onSelectDelete;
*/

  CachedImageItemWidget({
    Key key,
    this.imgUrl,
    /* this.onSelectDelete*/
  }) : super(key: key);

  @override
  _CachedImageItemWidgetState createState() => _CachedImageItemWidgetState();
}

class _CachedImageItemWidgetState extends State<CachedImageItemWidget> {
  File imagefile;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[beginGradientColor, endGradientColor],
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: InkWell(
          onTap: () {
            if (widget.imgUrl == null) {}
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: widget.imgUrl.isBlank
                      ? Text('a')
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            imageUrl: widget.imgUrl,
                          ),
                        )),
              widget.imgUrl != null
                  ? Positioned(
                      top: 2,
                      right: 2,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                beginGradientColor,
                                endGradientColor,
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink()
            ],
          ),
        ));
  }
}
