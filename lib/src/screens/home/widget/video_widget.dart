import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/models/home/video_response.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';
import 'package:vipay/src/screens/videos/video_item_widget.dart';
import 'package:vipay/src/shimmer/transaction_simmer.dart';

class VideoWidget extends StatelessWidget {
  HomeState state;

  @override
  Widget build(BuildContext context) {
    state = context.bloc<HomeCubit>().state;
    return _buildCategories(state, context);
  }

  Widget _buildCategories(HomeState state, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                SvgPicture.asset("assets/images/video.svg"),
                SizedBox(width: 10),
                Text(
                  allTranslations.text('video').toUpperCase(),
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF87D65A),
                      fontWeight: FontWeight.w700),
                ),
              ]),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RouteGenerator.allvideoScreen);
                },
                child: Row(children: [
                  Text(
                    allTranslations.text('show_more'),
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF87D65A),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset("assets/images/readmore_icon.svg"),
                ]),
              ),
            ],
          ),
          SizedBox(height: 10),
          state.videoResponse != null
              ? ListView.builder(
                  itemCount: state.videoResponse.data.length > 5
                      ? 5
                      : state.videoResponse.data.length,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    Video video = state.videoResponse.data.elementAt(index);
                    double _marginTop = 0;
                    (index == 0) ? _marginTop = 0 : _marginTop = 10;
                    return VideoItemWidget(
                      marginTop: _marginTop,
                      video: video,
                    );
                  },
                )
              : TransactionShimmer()
        ],
      ),
    );
  }
}
