import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/screens/voucher/cubit/voucher_cubit.dart';
import 'package:vipay/src/screens/voucher/widget/categories_widget.dart';
import 'package:vipay/src/screens/voucher/widget/voucher_item.dart';
import 'package:simplest/simplest.dart';

import 'widget/trending_voucher_widget.dart';

class VoucherScreen extends CubitWidget<VoucherCubit, VoucherState> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final _height = 136.0;
  static BlocProvider<VoucherCubit> provider() {
    return BlocProvider<VoucherCubit>(
      create: (_) => VoucherCubit(),
      child: VoucherScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.loadData();
  }

  @override
  void listener(BuildContext context, VoucherState state) {
    if (_refreshController.isRefresh) {
      _refreshController.refreshCompleted();
    }
  }

  @override
  Widget builder(BuildContext context, VoucherState state) {
    return Scaffold(
      body: _buildBody(state),
    );
  }

  Widget _buildBody(VoucherState state) {
    return SmartRefresher(
      controller: _refreshController,
      onRefresh: () => bloc.loadData(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //banner
            _buildBanner(context, state),
            // categories
            CategoriesWidget(),
            Divider(
              thickness: 4,
              color: Colors.grey[300],
            ),
            // Hot in week
            TrendingVoucherWidget(state.trendingVoucher),
            Divider(
              thickness: 4,
              color: Colors.grey[300],
            ),
            // vouchers
            _buildListVouchers(state),
          ],
        ),
      ),
    );
  }

  List<List<FoodData>> chunk(List<FoodData> list, int chunkSize) {
    List<List<FoodData>> chunks = [];
    int len = list.length;
    for (var i = 0; i < len; i += chunkSize) {
      int size = i + chunkSize;
      chunks.add(list.sublist(i, size > len ? len : size));
    }
    return chunks;
  }

  Widget _buildListVouchers(VoucherState state) {
    final vouchers = state.vouchers ?? [];
    if (vouchers.isBlank) {
      return SizedBox.shrink();
    }
    List<List<FoodData>> listVoucherByPage = chunk(vouchers, 4);

    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  SvgPicture.asset('assets/images/hotdeal.svg'),
                  SizedBox(width: 10),
                  Text(
                    ('voucher'.tr).toUpperCase(),
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF87D65A),
                        fontWeight: FontWeight.w700),
                  ),
                ]),
                GestureDetector(
                  onTap: () => Get.toNamed(RouteGenerator.voucherListScreen,
                      arguments: 'category'),
                  child: Row(children: [
                    Text(
                      'show_more'.tr,
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF87D65A),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 5),
                    SvgPicture.asset('assets/images/readmore_icon.svg'),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            width: screenSize.width,
            height: 440, //(88+6)*4 + 24,
            child: Swiper(
              outer: true,
              pagination: SwiperPagination(
                margin: EdgeInsets.only(bottom: 16),
                builder: DotSwiperPaginationBuilder(
                  activeColor: Theme.of(context).accentColor,
                  color: Theme.of(context).accentColor.withOpacity(0.2),
                ),
              ),
              itemCount: listVoucherByPage.length,
              itemBuilder: (c, i) {
                return Wrap(
                  runSpacing: 6.0,
                  children: listVoucherByPage[i]
                      .map((voucher) => VoucherItem(voucher: voucher, index: i))
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories(VoucherState state) {
    List<Widget> _children = [SizedBox(width: 24)];
    _children.addAll(state.categories.map((category) {
      return InkWell(
        onTap: () {
          navigator.pushNamed(
            RouteGenerator.searchVoucherCategoryScreen,
            arguments: {'categoryId': category.id.toString()},
          );
        },
        child: Container(
          constraints: BoxConstraints(maxHeight: 100),
          padding: EdgeInsets.fromLTRB(0, 16, 24, 16),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  height: 48,
                  width: 48,
                  imageUrl: category.media.first.icon,
                  placeholder: (c, s) => Container(
                    color: Color(0xFF2DBBBF),
                  ),
                  errorWidget: (c, s, d) => Container(
                    color: Color(0xFF2DBBBF),
                  ),
                ),
              ),
              Text(
                category.name,
              )
            ],
          ),
        ),
      );
    }));
    return Container(
      constraints: BoxConstraints(maxHeight: 100),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _children,
      ),
    );
  }

  Widget _buildBanner(BuildContext context, VoucherState state) {
    return state.bannerResponse != null
        ? Container(
            padding: EdgeInsets.only(bottom: 8.0, top: 10.0),
            height: _height,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              items: state.bannerResponse.data
                  .map(
                    (e) => Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: CachedNetworkImage(
                          imageUrl: e.imgUrl,
                          errorWidget: (context, url, error) =>
                              _buildErrorBanner(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
              ),
            ),
          )
        : _shimmerBanner();
  }

  Widget _buildErrorBanner() {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      height: _height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/banner.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _shimmerBanner() {
    return Shimmer.fromColors(
      baseColor: colorGrey300,
      highlightColor: colorGrey100,
      child: Container(
        height: _height,
        width: 200.0,
        color: colorWhite,
      ),
    );
  }
}
