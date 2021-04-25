part of 'notifications_cubit.dart';

@freezed
abstract class NotificationsStateData with _$NotificationsStateData {
  const factory NotificationsStateData(
      {@nullable NotificationResponse notificationResponse,
      @Default(0) int tabNotification,
      @Default(false) bool isLoading}) = Data;
}

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial(Data data) = Initial;
  const factory NotificationsState.loading(Data data) = Loading;
  const factory NotificationsState.loaded(Data data) = Loaded;
  const factory NotificationsState.changeTab(Data data) = ChangeTab;
}
