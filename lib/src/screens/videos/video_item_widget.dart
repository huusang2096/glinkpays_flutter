import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/models/home/video_response.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class VideoItemWidget extends StatelessWidget {
  double marginTop;
  Video video;

  VideoItemWidget({Key key, this.marginTop, this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String videoID = YoutubePlayer.convertUrlToId(video.url);
    return InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(RouteGenerator.videoScreen, arguments: {
            'video': video,
          });
        },
        child: Container(
            margin: EdgeInsets.only(top: marginTop),
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                    YoutubePlayer.getThumbnail(
                                        videoId: videoID)))),
                      ),
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.center,
                              child:
                                  SvgPicture.asset('assets/images/play.svg')))
                    ],
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(video.title,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF29B0B4),
                                  fontWeight: FontWeight.w500)),
                          Text(video.shortDescription ?? '...',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF4F4F4F),
                                  fontWeight: FontWeight.w300))
                        ],
                      ),
                    ))
              ],
            )));
  }
}
