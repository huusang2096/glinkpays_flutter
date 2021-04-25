import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/chatbox/cubit/chat_box_cubit.dart';
import 'package:vipay/src/screens/chatbox/widgets/circle_content_widget.dart';
import 'package:vipay/src/screens/chatbox/widgets/item_contact_widget.dart';
import 'package:vipay/src/screens/chatbox/widgets/separator_widget.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:simplest/simplest.dart';

class ChatBoxFriendScreen extends CubitWidget<ChatBoxCubit, ChatBoxState> {
  @override
  Widget builder(BuildContext context, ChatBoxState state) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: colorWhite,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: size.width,
              height: size.height * 0.2 + 1.0,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return CircleContentWidget(
                          size: size,
                          textBottom: 'add_friend'.tr,
                          urlSvg: 'assets/svg/add_friend.svg',
                          onPress: () {
                            print('add friend');
                          });
                    }
                    return CircleContentWidget(
                        size: size,
                        userName: 'A',
                        urlSvg: null,
                        onPress: () {
                          print('friend');
                        });
                  }),
            ),
            buildTitle(titleKey: 'from_contacts'),
            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ItemContactWidget(
                      onPress: () {
                        print('tap contact');
                      },
                      size: size,
                      showStatus: false,
                      pathSvg: 'assets/svg/avatar_icon.svg',
                      subTitle: (Random().nextInt(99999) + 10000).toString(),
                      title: 'User name $index',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SeparatorWidget();
                  },
                  itemCount: 5,
                )),
            SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }

  Widget buildTitle({String titleKey}) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        titleKey.tr,
        style: title.copyWith(color: colorTitle),
      ),
    );
  }
}
