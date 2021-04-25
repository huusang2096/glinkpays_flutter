import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/screens/history/cubit/history_cubit.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';
import 'package:vipay/src/screens/profile/cubit/profile_cubit.dart';
import 'package:vipay/src/screens/profile/widgets/profile_custom_row_Item.dart';
import 'package:vipay/src/screens/profile/widgets/profile_custom_row_info.dart';
import 'package:vipay/src/screens/profile/widgets/profile_shimmer.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/widgets/empty_account.dart';

class ProfileScreen extends CubitWidget<ProfileCubit, ProfileState> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  UserResponse profileResponse;
  final _size72 = 72.0;
  final _height5 = 5.0;
  DateFormat dateFormat = DateFormat('yyyy-MM-dd');

  ProfileScreen({this.profileResponse});

  static BlocProvider<ProfileCubit> provider({UserResponse profileResponse}) {
    return BlocProvider<ProfileCubit>(
      create: (_) => ProfileCubit(),
      child: ProfileScreen(
        profileResponse: profileResponse,
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.read<ProfileCubit>().loadData();
  }

  @override
  void listener(BuildContext context, ProfileState state) {
    super.listener(context, state);
    if (state is GetProfileSuccessState) {
      profileResponse = state.profileResponse;
    }

    if (state is LogoutSuccessState) {
      navigator.pushNamed(
        RouteGenerator.loginScreen,
      );
    }
    if (_refreshController.isRefresh) {
      _refreshController.refreshCompleted();
    }
  }

  @override
  Widget builder(BuildContext context, ProfileState state) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: state.isLoading
          ? ProfileShimmer()
          : SafeArea(
              child: locator<AppPref>().token.isNullOrBlank
                  ? EmptyAccount()
                  : profileResponse == null
                      ? EmptyAccount()
                      : Container(
                          color: greyColor300,
                          width: _size.width,
                          height: _size.height,
                          child: SmartRefresher(
                            controller: _refreshController,
                            onRefresh: () => bloc.getProfile(),
                            child: ListView(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.0,
                                            color: whiteColor,
                                          ),
                                          shape: BoxShape.circle,
                                          color: whiteColor,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 1.0,
                                                color: whiteColor,
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      _size72),
                                              child: GestureDetector(
                                                onTap: () =>
                                                    _navigateToEditProfileScreen(),
                                                child: CachedNetworkImage(
                                                  imageUrl: profileResponse
                                                          .data?.image ??
                                                      '',
                                                  width: _size72,
                                                  height: _size72,
                                                  fit: BoxFit.cover,
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Images.defaultAvatar
                                                              .loadImage(
                                                    size: _size72,
                                                  ),
                                                  /*  placeholder: (c, u) =>
                                                      ProfileShimmer()*/
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${profileResponse.data.lastName} ${profileResponse.data.firstName}',
                                        style: TextStyle(
                                          fontSize: 35.0,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      CustomRowInfo(
                                        press: () =>
                                            _navigateToEditProfileScreen(),
                                        name: profileResponse.data.lastName +
                                            ' ' +
                                            profileResponse.data.firstName,
                                        email: profileResponse.data.email,
                                        phone: profileResponse.data.phone,
                                        identification: handleIdentification(),
                                        address: profileResponse.data.address1,
                                        birthDay: profileResponse.data.birthday,
                                        gender: profileResponse.data.gender,
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      CustomRowItemBodyProfile(
                                        image: Images.profileIcon,
                                        title: 'inheritance_and_signature'.tr,
                                        isPng: false,
                                        press: () => navigator.pushNamed(
                                            RouteGenerator.inheritanceScreen),
                                      ),
                                      SizedBox(
                                        height: _height5,
                                      ),
                                      CustomRowItemBodyProfile(
                                        image: Images.voucherIcon,
                                        title: 'my_voucher',
                                        isPng: false,
                                        press: () => navigator.pushNamed(
                                            RouteGenerator.myVoucherScreen),
                                      ),
                                      SizedBox(
                                        height: _height5,
                                      ),
                                      CustomRowItemBodyProfile(
                                        image: 'assets/svg/qr_code.svg',
                                        title: 'my_qrcode',
                                        colorImg: Color(0xff28ABAE),
                                        isPng: false,
                                        press: () => navigator.pushNamed(
                                            RouteGenerator.myQrCodeScreen,
                                            arguments: {
                                              'myId': profileResponse.data.id
                                                      .toString() ??
                                                  '',
                                            }),
                                      ),
                                      SizedBox(
                                        height: _height5,
                                      ),
                                      _buildItemsColumn(
                                        context,
                                        'share_certificate',
                                        () {
                                          navigator.pushNamed(
                                              RouteGenerator
                                                  .stockCertificateScreen,
                                              arguments: {
                                                'urlStockCertificate':
                                                    profileResponse.data
                                                            ?.stockCertificate ??
                                                        ''
                                              });
                                        },
                                        Icon(
                                          FontAwesomeIcons.certificate,
                                          color: Color(0xff28ABAE),
                                        ),
                                      ),
                                      SizedBox(
                                        height: _height5,
                                      ),
                                      _buildItemsColumn(
                                        context,
                                        'support_ticket',
                                        () {
                                          navigator.pushNamed(RouteGenerator
                                              .supportTicketScreen);
                                        },
                                        Icon(
                                          Icons.announcement,
                                          color: Color(0xff28ABAE),
                                        ),
                                      ),
                                      SizedBox(
                                        height: _height5,
                                      ),
                                      CustomRowItemBodyProfile(
                                        image: Images.settingIcon,
                                        title: 'settings',
                                        isPng: true,
                                        press: () => navigator.pushNamed(
                                            RouteGenerator.settingScreen),
                                      ),
                                      SizedBox(
                                        height: _height5,
                                      ),
                                      CustomRowItemBodyProfile(
                                        image: Images.helpIcon,
                                        title: 'help',
                                        isPng: false,
                                        press: () => navigator.pushNamed(
                                            RouteGenerator.helpScreen),
                                      ),
                                      SizedBox(
                                        height: _height5,
                                      ),
                                      CustomRowItemBodyProfile(
                                        image: Images.logoutIcon,
                                        title: 'logout',
                                        isPng: false,
                                        press: () =>
                                            bloc.logout().then((value) {
                                          if (value) {
                                            context
                                                .read<HomeCubit>()
                                                .refreshHomePage();
                                            context
                                                .read<HistoryCubit>()
                                                .refreshHistoryPage();
                                          }
                                        }),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
            ),
    );
  }

  String handleIdentification() {
    if (context
        .read<ProfileCubit>()
        .state
        .profileResponse
        .data
        .documentVerification
        .isBlank) {
      return 'empty_identification'.tr;
    } else {
      return context
          .read<ProfileCubit>()
          .state
          .profileResponse
          .data
          .documentVerification
          .first
          .identityType
          .tr;
    }
  }

  Widget _buildItemsColumn(
    BuildContext context,
    String title,
    Function press,
    Icon icon,
  ) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 10.0,
          ),
          child: Row(
            children: [
              icon,
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: Text(
                  title.tr,
                ),
              ),
              Icon(
                Icons.arrow_right_sharp,
                color: greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToEditProfileScreen() async {
    await navigator.pushNamed(
      RouteGenerator.editProfileScreen,
      arguments: {
        'profileResponse': profileResponse,
      },
    );
    bloc.getProfile();
  }
}
