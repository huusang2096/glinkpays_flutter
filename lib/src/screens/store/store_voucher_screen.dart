import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/screens/sale/widgets/discount_information_widget.dart';
import 'package:vipay/src/screens/store/cubit/store_voucher_cubit.dart';
import 'package:vipay/src/screens/store/shimmer/address_shimmer.dart';
import 'package:vipay/src/screens/store/shimmer/introduce_shimmer.dart';
import 'package:vipay/src/screens/store/shimmer/reviews_shimmer.dart';
import 'package:vipay/src/screens/store/shimmer/supplier_shimmer.dart';
import 'package:vipay/src/screens/store/shimmer/terms_of_use_shimmer.dart';
import 'package:vipay/src/screens/store/shimmer/voucher_discount_information_shimmer.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:vipay/src/screens/store/widgets/store_voucher_widgets/button_add_to_cart_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_voucher_widgets/supplier_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_voucher_widgets/terms_of_use_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_voucher_widgets/voucher_discount_information_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/address_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/introduce_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/reviews_widget.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/widgets/box_discount_widget.dart';

class StoreVoucherScreen
    extends CubitWidget<StoreVoucherCubit, StoreVoucherState> {
  final String heroTag;
  final bool isExistStoreScreen;
  final int idVoucher;

  StoreVoucherScreen({this.heroTag, this.isExistStoreScreen, this.idVoucher});

  static BlocProvider<StoreVoucherCubit> provider(
      {String heroTag, int idVoucher, bool isExistStoreScreen}) {
    return BlocProvider(
      create: (context) => StoreVoucherCubit(),
      child: StoreVoucherScreen(
        heroTag: heroTag,
        isExistStoreScreen: isExistStoreScreen,
        idVoucher: idVoucher,
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getFoodDetail(idVoucher);
    super.afterFirstLayout(context);
  }

  @override
  Widget builder(BuildContext context, StoreVoucherState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: false,
      child: Scaffold(
        backgroundColor: colorBackgroundScaffold,
        appBar: buildAppBar(
            titleKey: 'voucher',
            onPressIcon: () {
              navigator.pop();
            }),
        body: SafeArea(
          child: Stack(
            children: [
              //body
              _buildBody(size, state),

              //button
              ButtonAddToCartWidget(
                  titleButton: 'add_to_cart'.tr,
                  showButton: state.isLoading,
                  size: size,
                  onPress: () async {
                    final checkLogin =
                        await context.read<StoreVoucherCubit>().exitLogin();
                    if (!checkLogin) {
                      /*displayBottomSheet(context, size);*/
                      await navigator.pushNamed(
                        RouteGenerator.loginScreen,
                      );
                    } else {
                      await context.read<StoreVoucherCubit>().addToCart();
                    }
                  }),

              //icon store
              Positioned(
                right: 0.0,
                child: InkWell(
                  onTap: () {
                    navigator.pushNamed(RouteGenerator.cartScreen);
                  },
                  child: SizedBox(
                    child: SvgPicture.asset('assets/svg/backgroundStore.svg'),
                  ),
                ),
              ),
              Positioned(
                top: 22.0,
                right: 10.0,
                child: IgnorePointer(
                  child: SvgPicture.asset(
                    'assets/svg/store.svg',
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(Size size, StoreVoucherState state) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          !state.isLoading
              ? Stack(
                  children: [
                    Hero(
                      tag: heroTag ?? '',
                      transitionOnUserGestures: true,
                      child: buildCachedNetworkImage(
                          isBorderRadius: false,
                          height: size.height * 0.4,
                          imgUrl: (state.voucher.data.media != null &&
                                  state.voucher.data.media.isNotEmpty)
                              ? state.voucher.data.media.first.thumb
                              : ' ',
                          width: size.width),
                    ),
                    BoxDicountWidget(
                      discount: state.voucher.data?.discountPrice,
                      iconDiscount: Icons.arrow_downward,
                      sizeIcon: 22,
                      horizontalPadding: 4.0,
                      verticalPadding: 4.0,
                      positionedTop: 0,
                      positionedLeft: 0,
                    ),
                  ],
                )
              : Shimmer.fromColors(
                  baseColor: colorGrey300,
                  highlightColor: colorGrey100,
                  child: Container(
                    color: colorWhite,
                    width: size.width,
                    height: size.height * 0.4,
                  ),
                ),
          Container(
            height: 8.0,
            width: size.width,
            color: colorBackgroundScaffold,
          ),
          state.isLoading
              ? IntroduceShimmer(
                  size: size,
                )
              : IntroduceWidget(
                  descriptionText:
                      bloc.skipHtml(state.voucher.data.description ?? ' '),
                  listUrl: state.voucher.data.hasMedia == null
                      ? ['']
                      : state.voucher.data.hasMedia == false
                          ? ['']
                          : state.voucher.data.media.map((e) {
                              if (e.thumb != null) {
                                return e.thumb;
                              }
                            }).toList(),
                  ratingText: state.voucher.data.restaurant != null
                      ? state.voucher.data.restaurant.rate ?? ' '
                      : ' ',
                  titleText: state.voucher.data.name ?? '',
                  size: size,
                ),
          state.isLoading
              ? TermsOfUseShimmer(
                  size: size,
                )
              : TermsOfUseWidget(
                  ingredients: state.voucher.data.ingredients ?? '',
                  size: size,
                ),
          state.isLoading
              ? VoucherDiscountInformationShimmer()
              : VoucherDiscountInformationWidget(
                  discount: state.voucher.data?.discountPrice,
                  maxDiscount: state.voucher.data?.maxApply,
                ),
          state.isLoading
              ? AddressShimmer(
                  size: size,
                )
              : AddressWidget(
                  size: size,
                  address: state.voucher.data.restaurant != null
                      ? state.voucher.data.restaurant.address ?? ' '
                      : ' ',
                  phone: state.voucher.data.restaurant != null
                      ? state.voucher.data.restaurant.phone ?? ' '
                      : ' ',
                ),
          state.isLoading
              ? SupplierShimmer(size: size)
              : SupplierWidget(
                  onPressItem: () {
                    bloc.handleExistStore(isExistStoreScreen);
                  },
                  urlImg: state.voucher.data.restaurant != null
                      ? (state.voucher.data.restaurant.media != null &&
                              state.voucher.data.restaurant.media.isNotEmpty)
                          ? state.voucher.data.restaurant.media.first.thumb
                          : ' '
                      : ' ',
                  name: state.voucher.data.restaurant != null
                      ? state.voucher.data.restaurant.name ?? ' '
                      : '',
                  size: size,
                ),
          state.isLoading
              ? ReviewsShimmer(size: size)
              : ReviewsWidget(
                  size: size,
                  foodReviews: state.voucher.data.foodReviews ?? []),
          Container(
            height: 70.0,
            width: size.width,
            color: colorBackgroundScaffold,
          ),
        ],
      ),
    );
  }

  void displayBottomSheet(BuildContext context, Size size) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Container(
          height: size.height * 0.18,
          color: colorWhite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'signin_to_use_feature'.tr,
                    style: body2,
                  )),
              Container(
                width: size.width * 0.9,
                height: 45.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                      colors: <Color>[colorGradientStart, colorGradientEnd],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(0.0, 1.5),
                        blurRadius: 1.5,
                      ),
                    ]),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(56.0 / 3)),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.loginScreen);
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Text('sign_in'.tr, style: button),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
