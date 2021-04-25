import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/restaurant.dart';
import 'package:vipay/src/screens/store/cubit/store_cubit.dart';
import 'package:vipay/src/screens/store/shimmer/introduce_shimmer.dart';
import 'package:vipay/src/screens/store/shimmer/vouchure_shimmer.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/address_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/information_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/introduce_widget.dart';
import 'package:vipay/src/screens/store/widgets/store_widgets/vouchure_widget.dart';

class StoreScreen extends CubitWidget<StoreCubit, StoreState> {
  final String heroTag;
  final Restaurant restaurant;
  StoreScreen(this.heroTag, this.restaurant);

  static BlocProvider<StoreCubit> provider({restaurant, String heroTag}) {
    return BlocProvider(
      create: (context) => StoreCubit(restaurant),
      child: StoreScreen(heroTag, restaurant),
    );
  }

  @override
  Widget builder(BuildContext context, StoreState state) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorBackgroundScaffold,
      appBar: buildAppBar(
          titleKey: 'store',
          onPressIcon: () {
            navigator.pop();
          }),
      body: SafeArea(
        child: Stack(
          children: [
            //body
            buildBody(size, state),
            //icon store
            Positioned(
              right: 0.0,
              child: InkWell(
                onTap: () {
                  print('on press cart');
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
    );
  }

  Widget buildBody(Size size, StoreState state) {
    final hasData = state.vouchers.data == null ? false : true;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Hero(
            tag: heroTag,
            child: buildCachedNetworkImage(
                isBorderRadius: false,
                height: size.height * 0.4,
                imgUrl: restaurant.media == null
                    ? ' '
                    : restaurant.media.isEmpty
                        ? ' '
                        : restaurant.media.first?.thumb ?? '',
                width: size.width),
          ),
          Container(
            height: 8.0,
            width: size.width,
            color: colorBackgroundScaffold,
          ),
          hasData
              ? IntroduceWidget(
                  descriptionText: bloc.parseHtml(restaurant.description ?? ''),
                  listUrl: bloc.handleUrlsInInformation(),
                  ratingText: restaurant.rate.toString() ?? '',
                  titleText: restaurant.name ?? '',
                  size: size,
                )
              : IntroduceShimmer(
                  size: size,
                ),
          InformationWidget(
            size: size,
            information: restaurant.information ?? '',
          ),
          // InformationShimmer(
          //    size: size,
          //  ),
          AddressWidget(
            address: restaurant.address ?? '',
            phone: restaurant.phone ?? '',
            size: size,
          ),
          // AddressShimmer(
          //         size: size,
          //       ),
          hasData
              ? VouchureWidget(
                  size: size,
                )
              : VouchureShimmer(
                  size: size,
                ),
          // bloc.hasFoodReviews
          //     ? ReviewsWidget(
          //         size: size,
          //         foodReviews: bloc.foodReviews,
          //       )
          //     : ReviewsShimmer(
          //         size: size,
          //       ),
        ],
      ),
    );
  }
}
