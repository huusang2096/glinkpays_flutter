import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/home/notification_response.dart';

part 'notifications_state.dart';
part 'notifications_cubit.freezed.dart';

class NotificationsCubit extends BaseCubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsState.initial(Data()));

  void loadData() async {
    var response = state.data.notificationResponse;
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      response = await dataRepository.getNotification();
    } catch (e) {
      handleAppError(e);
    }
    emit(Loaded(
        state.data.copyWith(notificationResponse: response, isLoading: false)));
  }

  void onChangeTab(int index) {
    emit(ChangeTab(state.data.copyWith(tabNotification: index)));
  }
}
