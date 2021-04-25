import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';

class BannerWidget extends StatelessWidget {
  final _height = 136.0;
  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeCubit>().state;
    final _size = MediaQuery.of(context).size;
    return state.bannerResponse != null
        ? Container(
            padding: EdgeInsets.only(bottom: 8),
            height: _height,
            width: _size.width,
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
      child: Container(height: _height, width: 200.0, color: colorWhite),
    );
  }
}
