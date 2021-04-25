import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';
import 'package:vipay/src/screens/home/widget/categories_widget.dart';
import 'package:vipay/src/screens/home/widget/hotdeal_widget.dart';
import 'package:vipay/src/screens/home/widget/identify_notification_widget.dart';
import 'package:vipay/src/screens/home/widget/user_card_widget.dart';
import 'package:vipay/src/screens/home/widget/video_widget.dart';
import 'package:vipay/src/screens/home/widget/voucher_widget.dart';
import 'package:vipay/src/screens/profile/cubit/profile_cubit.dart';

import 'widget/banner_widget.dart';

class HomeScreen extends CubitWidget<HomeCubit, HomeState> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  static Widget provider() {
    return HomeScreen();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getUserAvailable();
    bloc.getCategories();
    bloc.getVoucherFoods();
    bloc.getTopWeekFoods();
    bloc.getVideos();
    bloc.getBanner();
  }

  void reLoadData() {
    bloc.getUserAvailable();
    bloc.getCategories();
    bloc.getVoucherFoods();
    bloc.getTopWeekFoods();
    bloc.getVideos();
    bloc.getBanner();
    context.read<ProfileCubit>().getProfile();
  }

  @override
  void listener(BuildContext context, HomeState state) {
    super.listener(context, state);

    if (_refreshController.isRefresh) {
      _refreshController.refreshCompleted();
    }
  }

  Widget _handleWarningBanner() {
    if (context.watch<ProfileCubit>().handleStatusWarning()) {
      return SizedBox.shrink();
    } else {
      return IdentifyNotificationWidget();
    }
  }

  @override
  Widget builder(BuildContext context, HomeState state) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          body: SmartRefresher(
              controller: _refreshController,
              onRefresh: () => reLoadData(),
              child: SingleChildScrollView(
                  child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  locator<AppPref>().token.isNullOrBlank
                      ? SizedBox.shrink()
                      : UserCardWidget(),
                  _handleWarningBanner(),
                  CategoriesWidget(),
                  BannerWidget(),
                  SizedBox(height: 6),
                  VoucherWidget(),
                  SizedBox(height: 6),
                  HotDealWidget(),
                  SizedBox(height: 6),
                  VideoWidget()
                ],
              ))),
        ));
  }

// void _showShapeDialog(BuildContext context, HomeState state) {
//   final _size = MediaQuery.of(context).size;
//   showDialog(
//     context: context,
//     builder: (_) => NotificationCustomDialog(
//       width: _size.width * 0.9,
//       height: _size.height * 0.8,
//       child: state.notificationResponse == null
//           ? EmptyAccount()
//           : ListView.builder(
//               itemCount: state.notificationResponse.data.user?.length,
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return ListItemNotification(
//                     state.notificationResponse?.data?.user[index] ?? '');
//               },
//             ),
//     ),
//   );
// }
}
