import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/chatbox/cubit/chat_box_cubit.dart';
import 'package:vipay/src/screens/chatbox/widgets/item_contact_widget.dart';
import 'package:vipay/src/screens/chatbox/widgets/separator_widget.dart';
import 'package:simplest/simplest.dart';

class ChatBoxMessageScreen extends CubitWidget<ChatBoxCubit, ChatBoxState> {
  @override
  Widget builder(BuildContext context, ChatBoxState state) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        color: colorWhite,
        child: ListView.separated(
            padding: EdgeInsets.only(top: 10.0),
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.20,
                child: ItemContactWidget(
                  onPress: () {
                    print('tap message');
                  },
                  size: size,
                  showStatus: true,
                  statusUser:
                      index % 2 == 0 ? UserStatus.ONLINE : UserStatus.OFFLINE,
                  title: 'User name $index',
                  subTitle:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit...',
                  pathSvg: 'assets/svg/avatar_icon.svg',
                ),
                secondaryActions: <Widget>[
                  buildIconSlideAction(Icons.alarm_off, colorBackgroundAppBar),
                  buildIconSlideAction(Icons.delete, Colors.red)
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SeparatorWidget();
            },
            itemCount: 6));
  }

  IconSlideAction buildIconSlideAction(IconData icon, Color colorIcon) {
    return IconSlideAction(
      // caption: 'More',
      color: colorIcon,
      icon: icon,
      onTap: () {
        print('print turn off alarm');
      },
    );
  }
}
