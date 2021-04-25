import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/home/notification_response.dart';
import 'package:vipay/src/screens/notification/cubit/notifications_cubit.dart';

import 'widgets/empty_notification_widget.dart';

class NotificationsScreen
    extends CubitWidget<NotificationsCubit, NotificationsState> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: true);

  @override
  Widget builder(BuildContext context, NotificationsState state) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'notifications'.tr,
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: state.data.tabNotification == 0
                            ? Colors.white
                            : null,
                      ),
                    child: FlatButton(
                      onPressed: () =>
                          context.read<NotificationsCubit>().onChangeTab(0),
                      child: Text('user'.tr,
                          style: body1.copyWith(
                              color: state.data.tabNotification == 0
                                  ? Colors.black
                                  : Colors.white)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: state.data.tabNotification == 1
                            ? Colors.white
                            : null,
                        ),
                    child: FlatButton(
                      onPressed: () =>
                          context.read<NotificationsCubit>().onChangeTab(1),
                      child: Text('system'.tr,
                          style: body1.copyWith(
                              color: state.data.tabNotification == 1
                                  ? Colors.black
                                  : Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: _buildBody(context, state),
    );
  }

  Widget _buildBody(BuildContext context, NotificationsState state) {
    final data = state.data;
    final userNotifcations = data.notificationResponse?.data?.user ?? [];
    final systemNotifcations = data.notificationResponse?.data?.system ?? [];

    return IndexedStack(
      index: state.data.tabNotification,
      children: [
        userNotification(state, userNotifcations),
        systemNotification(state, systemNotifcations),
      ],
    );
  }

  Widget userNotification(
      NotificationsState state, List<NotificationItem> dataList) {
    return SmartRefresher(
      controller: _refreshController,
      onRefresh: () => context.read<NotificationsCubit>().loadData(),
      child: dataList.isEmpty
          ? EmptyNotificationWidget()
          : ListView.separated(
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    navigator.pushNamed(RouteGenerator.notificationDetail,
                        arguments: {'notification': dataList.elementAt(index)});
                  },
                  child:
                      _buildNotificationItem(context, state, dataList[index])),
              separatorBuilder: (context, index) => Divider(),
              itemCount: dataList.length),
    );
  }

  Widget systemNotification(
      NotificationsState state, List<NotificationItem> dataList) {
    return SmartRefresher(
      controller: _refreshController,
      onRefresh: () => context.read<NotificationsCubit>().loadData(),
      child: dataList.isEmpty
          ? EmptyNotificationWidget()
          : ListView.separated(
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    navigator.pushNamed(RouteGenerator.notificationDetail,
                        arguments: {'notification': dataList.elementAt(index)});
                  },
                  child:
                      _buildNotificationItem(context, state, dataList[index])),
              separatorBuilder: (context, index) => Divider(),
              itemCount: dataList.length),
    );
  }

  Widget _buildNotificationItem(
      BuildContext context, NotificationsState state, NotificationItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            child: Images.logo.loadImage(size: 40),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(item.title),
          )
        ],
      ),
    );
  }

  @override
  void listener(BuildContext context, NotificationsState state) {
    super.listener(context, state);
    if (state.data.isLoading && !_refreshController.isRefresh) {
      _refreshController.requestRefresh();
    }

    if (!state.data.isLoading && _refreshController.isRefresh) {
      _refreshController.refreshCompleted();
    }
  }

  static BlocProvider<NotificationsCubit> provider() {
    return BlocProvider(
      create: (context) => NotificationsCubit(),
      child: NotificationsScreen(),
    );
  }
}
