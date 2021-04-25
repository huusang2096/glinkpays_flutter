import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/models/home/video_response.dart';
import 'package:vipay/src/screens/videos/video_item_widget.dart';
import 'package:vipay/src/screens/videos/cubit/video_cubit.dart';
import 'package:vipay/src/screens/videos/cubit/video_state.dart';
import 'package:vipay/src/shimmer/transaction_simmer.dart';

class AllVideoScreen extends CubitWidget<VideoCubit, VideoState> {
  static provider() {
    return BlocProvider(
      create: (context) => VideoCubit(),
      child: AllVideoScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getVideos();
  }

  @override
  Widget builder(BuildContext context, VideoState state) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xFF239EA1),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          'all_video'.tr,
          style: Theme.of(context)
              .textTheme
              .title
              .merge(TextStyle(color: Colors.white)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.videoResponse != null
            ? ListView.builder(
                itemCount: state.videoResponse.data.length,
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  Video video = state.videoResponse.data.elementAt(index);
                  double _marginTop = 0;
                  (index == 0) ? _marginTop = 0 : _marginTop = 10;
                  return new VideoItemWidget(
                    marginTop: _marginTop,
                    video: video,
                  );
                },
              )
            : TransactionShimmer(),
      ),
    );
  }
}
