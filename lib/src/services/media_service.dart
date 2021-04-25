import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

abstract class IMediaService {
  Future<File> pickImage();
  Future<List<File>> pickMultipleImages();
}

class LocalMediaService implements IMediaService {
  BuildContext get _context => Get.key.currentState.overlay.context;

  @override
  Future<File> pickImage() async {
    final picker = ImagePicker();
    ImageSource source = await _showSelectImageSource(_context);
    if (source == null) {
      return null;
    }
    final pickedFile = await picker.getImage(source: source);
    if (pickedFile == null) {
      return null;
    }
    return File(pickedFile.path);
  }

  @override
  Future<List<File>> pickMultipleImages() {
    // TODO: implement pickMultipleImages
    throw UnimplementedError();
  }

  _showSelectImageSource(BuildContext context) async {
    return showCupertinoModalPopup<ImageSource>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('camera'.tr),
              onPressed: () {
                Navigator.pop(context, ImageSource.camera);
              },
            ),
            CupertinoActionSheetAction(
              child: Text('gallery'.tr),
              onPressed: () {
                Navigator.pop(context, ImageSource.gallery);
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text('cancel'.tr),
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        );
      },
    );
  }
}
