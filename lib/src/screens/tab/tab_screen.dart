import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/history/cubit/history_cubit.dart';
import 'package:vipay/src/screens/history/history_screen.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';
import 'package:vipay/src/screens/home/home_screen.dart';
import 'package:vipay/src/screens/profile/cubit/profile_cubit.dart';
import 'package:vipay/src/screens/profile/profile_screen.dart';
import 'package:vipay/src/screens/tab/cubit/tab_cubit.dart';
import 'package:vipay/src/screens/tab/widgets/bottom_bar_item.dart';
import 'package:vipay/src/screens/voucher/cubit/voucher_cubit.dart';
import 'package:vipay/src/screens/voucher/voucher_screen.dart';
import 'package:vipay/src/widgets/home_app_bar_widget.dart';

class TabScreen extends CubitWidget<TabCubit, TabState> {
  static provider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TabCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => ProfileCubit(),
        ),
        BlocProvider(
          create: (context) => HistoryCubit(),
        ),
        BlocProvider(
          create: (context) => VoucherCubit(),
        )
      ],
      child: TabScreen(),
    );
  }

  final List<Widget> listScreen = [
    HomeScreen(),
    VoucherScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.loadData();
  }

  @override
  Widget builder(BuildContext context, TabState state) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarWidget()),
      bottomNavigationBar: buildBottomNavigation(context, state),
      body: IndexedStack(
        children: listScreen,
        index: state.currentTab,
      ),
    );
  }

  BottomAppBar buildBottomNavigation(BuildContext context, TabState state) {
    return BottomAppBar(
      notchMargin: 5.0,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SizedBox(
              height: 60.0,
              child: Row(
                children: [
                  state.currentTab == 0
                      ? _buildBorderTab(context,
                          title: 'home',
                          image: Image.asset(
                            Images.homeIcon,
                            width: 60,
                            height: 20,
                          ))
                      : BottomBarItem(
                          color: lightGrey,
                          onPress: () {
                            bloc.changeTab(0);
                            context.read<HomeCubit>().getUserAvailable();
                          },
                          title: 'home'.tr,
                          icon: Image.asset(
                            Images.homeIcon,
                            width: 60,
                            height: 20,
                          ),
                        ),
                  state.currentTab == 1
                      ? _buildBorderTab(context,
                          title: 'voucher',
                          image: SvgPicture.asset(Images.voucherIcon))
                      : BottomBarItem(
                          color: lightGrey,
                          onPress: () {
                            bloc.changeTab(1);
                          },
                          title: 'voucher'.tr,
                          icon: SvgPicture.asset(Images.voucherIcon),
                        ),
                  state.currentTab == 2
                      ? _buildBorderTab(context,
                          title: 'history',
                          image: SvgPicture.asset(Images.historyIcon))
                      : BottomBarItem(
                          color: lightGrey,
                          onPress: () {
                            bloc.changeTab(2);
                          },
                          title: 'history'.tr,
                          icon: SvgPicture.asset(Images.historyIcon),
                        ),
                  state.currentTab == 3
                      ? _buildBorderTab(context,
                          title: 'profile',
                          image: SvgPicture.asset(Images.profileIcon))
                      : BottomBarItem(
                          color: lightGrey,
                          onPress: () {
                            bloc.changeTab(3);
                          },
                          title: 'profile'.tr,
                          icon: SvgPicture.asset(Images.profileIcon),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBorderTab(BuildContext context, {String title, image}) {
    return InkWell(
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 4,
        child: ClipRect(
          clipBehavior: Clip.hardEdge,
          child: OverflowBox(
            maxHeight: 70,
            maxWidth: 300,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 4.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 0.5,
                      blurRadius: 1.5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: image,
                    ),
                    Text(title.tr,
                        style: body1.copyWith(fontSize: 12, color: activeGreen))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

// buildBottomNavigation(BuildContext context, TabState state) {
//   return BottomAppBar(
//     notchMargin: 5.0,
//     shape: CircularNotchedRectangle(),
//     child: Row(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         Expanded(
//           child: SizedBox(
//               height: 60.0,
//               child: Row(
//                 children: [
//                   BottomBarItem(
//                     color: state.currentTab == 0 ? activeGreen : lightGrey,
//                     onPress: () {
//                       bloc.changeTab(0);
//                     },
//                     title: 'chat_box'.tr,
//                     icon: (Images.chatboxIcon),
//                   ),
//                   BottomBarItem(
//                     color: state.currentTab == 1 ? activeGreen : lightGrey,
//                     onPress: () {
//                       bloc.changeTab(1);
//                     },
//                     title: 'voucher'.tr,
//                     icon: (Images.voucherIcon),
//                   ),
//                 ],
//               )),
//         ),
//         InkWell(
//           onTap: () => bloc.changeTab(2),
//           child: Container(
//             height: 60,
//             width: MediaQuery.of(context).size.width / 4,
//             child: ClipRect(
//               clipBehavior: Clip.hardEdge,
//               child: OverflowBox(
//                 maxHeight: 70,
//                 maxWidth: 300,
//                 child: Center(
//                   child: Container(
//                     width: MediaQuery.of(context).size.width / 4.5,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.4),
//                           spreadRadius: 0.5,
//                           blurRadius: 1.5,
//                         ),
//                       ],
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           Images.homeIcon,
//                         ),
//                         Text(
//                           "home".tr,
//                           style: body1.copyWith(
//                               fontSize: 12,
//                               color: state.currentTab == 2
//                                   ? activeGreen
//                                   : lightGrey),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: SizedBox(
//               height: 60.0,
//               child: Row(
//                 children: [
//                   BottomBarItem(
//                     color: state.currentTab == 3 ? activeGreen : lightGrey,
//                     onPress: () {
//                       bloc.changeTab(3);
//                     },
//                     title: 'history'.tr,
//                     icon: Images.historyIcon,
//                   ),
//                   BottomBarItem(
//                     color: state.currentTab == 4 ? activeGreen : lightGrey,
//                     onPress: () {
//                       bloc.changeTab(4);
//                     },
//                     title: 'profile'.tr,
//                     icon: Images.profileIcon,
//                   ),
//                 ],
//               )),
//         ),
//       ],
//     ),
//   );
// }
}
