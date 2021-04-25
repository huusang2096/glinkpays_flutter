import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

import 'package:vipay/src/screens/transfer/cubit/transfer/transfer_cubit.dart';
import 'package:simplest/simplest.dart';

class CustomTextFieldNoteWidget extends StatelessWidget {
  const CustomTextFieldNoteWidget({
    Key key,
    @required this.size,
    @required this.controllerNote,
  }) : super(key: key);

  final Size size;
  final TextEditingController controllerNote;

  @override
  Widget build(BuildContext context) {
    final cubit = context.bloc<TransferCubit>();
    final state = cubit.state;
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      color: colorWhite,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('note'.tr, style: body1.copyWith(color: colorTitle)),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            // decoration: BoxDecoration(
            //     border: Border.all(color: colorGrey),
            //     borderRadius: BorderRadius.all(Radius.circular(20))),
            child: TextFormField(
              validator: (value) {
                if (value.length > 255) {
                  return 'not_larger_than_characters'.tr;
                }
                return null;
              },
              controller: controllerNote,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 1,
              decoration: InputDecoration(
                hintText: 'to_characters'.tr,
                hintStyle: TextStyle(color: colorGrey.withOpacity(0.5)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: outlineInputBorder(color: colorGrey, radius: 20),
                focusedBorder: outlineInputBorder(
                    color: colorBackgroundAppBar, radius: 20),
                errorBorder:
                    outlineInputBorder(color: Colors.redAccent, radius: 20),
                focusedErrorBorder:
                    outlineInputBorder(color: Colors.redAccent, radius: 20),
                enabledBorder: outlineInputBorder(color: colorGrey, radius: 20),
              ),
            ),
          )
        ],
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({double radius, Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color),
    );
  }
}
