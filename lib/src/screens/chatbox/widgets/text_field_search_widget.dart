import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/chatbox/cubit/chat_box_cubit.dart';
import 'package:simplest/simplest.dart';

class TextFieldSearchWidget extends CubitWidget<ChatBoxCubit, ChatBoxState> {
  final Size size;
  final _debouncer = Debouncer(milliseconds: 500);
  final TextEditingController controllerSearch = TextEditingController();

  TextFieldSearchWidget(this.size);

  @override
  Widget builder(BuildContext context, ChatBoxState state) {
    return Container(
      width: size.width * 0.7,
      height: 40.0,
      decoration: BoxDecoration(
        color: Color(0xFFE5E5E5).withOpacity(0.6),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      padding: EdgeInsets.only(right: 1.0),
      child: TextField(
        controller: controllerSearch,
        decoration: InputDecoration(
            prefixIcon: Container(
              padding: EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                'assets/images/search.svg',
              ),
            ),
            hintText: 'looking_for_friends_messages'.tr,
            hintStyle: TextStyle(color: colorGrey),
            border: UnderlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none)),
        onChanged: (query) {
          _debouncer.run(() {});
        },
        autofocus: false,
        textInputAction: TextInputAction.search,
      ),
    );
  }

  @override
  dynamic dispose() {
    controllerSearch.dispose();
    return super.dispose();
  }
}
