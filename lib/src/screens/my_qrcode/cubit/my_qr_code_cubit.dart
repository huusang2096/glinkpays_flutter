import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';

part 'my_qr_code_state.dart';

class MyQrCodeCubit extends BaseCubit<MyQrCodeState> {
  MyQrCodeCubit(String myId) : super(MyQrCodeInitial(myId));

  Future<void> captureAndSharePng(GlobalKey<ScaffoldState> _scaffoldKey) async {
    try {
      RenderRepaintBoundary boundary =
          _scaffoldKey.currentContext.findRenderObject();
      final image = await boundary.toImage();
      ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List pngBytes = byteData.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = await File('${tempDir.path}/qrcode.png').create();
      await file.writeAsBytes(pngBytes);
      await Share.shareFiles(['${tempDir.path}/qrcode.png'],
          text: 'qr_code'.tr);
    } catch (e) {
      //print(e.toString());
    }
  }
}
