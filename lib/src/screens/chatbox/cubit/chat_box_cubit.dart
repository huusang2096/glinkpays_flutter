import 'package:vipay/src/common/bloc/base_cubit.dart';

part 'chat_box_state.dart';

class ChatBoxCubit extends BaseCubit<ChatBoxState> {
  ChatBoxCubit() : super(ChatBoxInitial());

  void changeSelectTab(int index) {
    emit(ChatBoxChangeSelectTab(index));
  }
}
