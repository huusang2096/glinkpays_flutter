import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/chatbox/chatbox_friend_screen.dart';
import 'package:vipay/src/screens/chatbox/cubit/chat_box_cubit.dart';
import 'package:vipay/src/screens/chatbox/widgets/text_field_search_widget.dart';
import 'package:simplest/simplest.dart';

class ChatBoxScreen extends CubitWidget<ChatBoxCubit, ChatBoxState> {
  static provider() {
    return ChatBoxScreen();
  }

  @override
  dynamic init() {
    return super.init();
  }

  @override
  Widget builder(BuildContext context, state) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // bottom: PreferredSize(
        //   preferredSize: Size(double.infinity, 44),
        //   child: DefaultTabController(
        //     initialIndex: state.selectTab,
        //     length: 2,
        //     child: Container(
        //       color: colorGrey300,
        //       height: 35,
        //       child: TabBar(
        //         onTap: (index) {
        //           bloc.changeSelectTab(index);
        //         },
        //         indicator: BoxDecoration(color: colorWhite),
        //         isScrollable: false,
        //         indicatorWeight: 0.0,
        //         tabs: [
        //           buildTab(state, 'friend'.tr, 0),
        //           buildTab(state, 'message'.tr, 1),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        backgroundColor: colorBackgroundAppBar,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: TextFieldSearchWidget(size),
      ),
      body: ChatBoxFriendScreen(),
      // body: IndexedStack(
      //   children: [ChatBoxFriendScreen(), ChatBoxMessageScreen()],
      //   index: state.selectTab,
      // ),
    );
  }

  // Tab buildTab(ChatBoxState state, String titleTab, int index) {
  //   return Tab(
  //     child: Text(
  //       titleTab,
  //       style: TextStyle(
  //           color: state.selectTab == index ? Colors.black : Colors.black45),
  //     ),
  //   );
  // }
}
