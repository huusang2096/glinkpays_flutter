part of 'chat_box_cubit.dart';

class ChatBoxState {
  int selectTab;

  ChatBoxState(this.selectTab);
}

class ChatBoxInitial extends ChatBoxState {
  ChatBoxInitial() : super(0);
}

class ChatBoxChangeSelectTab extends ChatBoxState {
  ChatBoxChangeSelectTab(int selectTab) : super(selectTab);
}
