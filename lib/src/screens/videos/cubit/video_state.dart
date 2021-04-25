import 'package:vipay/src/models/home/video_response.dart';

class VideoState {
  VideoResponse videoResponse;

  VideoState(this.videoResponse);

  VideoState.fromState(VideoState state) {
    this.videoResponse = state.videoResponse;
  }

  VideoState.copyWith({VideoResponse videoResponse, VideoState state}) {
    this.videoResponse = videoResponse ?? state.videoResponse;
  }
}

class VideoInitial extends VideoState {
  VideoInitial() : super(null);
}

class GetVideoResponseState extends VideoState {
  GetVideoResponseState(VideoResponse videoResponse, VideoState state)
      : super.copyWith(videoResponse: videoResponse, state: state);
}
