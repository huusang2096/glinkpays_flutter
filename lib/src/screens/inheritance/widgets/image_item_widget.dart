import 'dart:core';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/image_selected_model.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';

class ImageItemWidget extends StatefulWidget {
  ImageSelect imageSelect;
  int index;
  final Function(ImageSelect) onSelectDelete;

  ImageItemWidget({Key key, this.imageSelect, this.index, this.onSelectDelete})
      : super(key: key);

  @override
  _ImageItemWidgetState createState() => _ImageItemWidgetState();
}

class _ImageItemWidgetState extends State<ImageItemWidget> {
  File imagefile;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
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
            context.read<InheritanceCubit>().addImage(widget.index);
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                bottom: 0,
                left: 0,
                child: widget.imageSelect.url == null
                    ? Container(
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Image.asset('assets/images/icon_photo.png',
                              color: Colors.white, width: 40),
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.file(widget.imageSelect.url,
                            fit: BoxFit.cover),
                      ),
              ),
              widget.imageSelect.url != null
                  ? Positioned(
                      top: 2,
                      right: 2,
                      child: InkWell(
                        onTap: () {
                          context
                              .read<InheritanceCubit>()
                              .deleteImage(widget.index);
                        },
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          padding: EdgeInsets.all(5),
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
                  : SizedBox.shrink(),
            ],
          ),
        ));
  }
}
