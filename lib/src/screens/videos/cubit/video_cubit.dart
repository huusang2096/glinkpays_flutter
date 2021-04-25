import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/home/video_response.dart';
import 'package:vipay/src/screens/videos/cubit/video_state.dart';

class VideoCubit extends BaseCubit<VideoState> {
  VideoCubit() : super(VideoInitial());

  @override
  initData() {}

  getVideos() async {
    try {
      VideoResponse videoResponse = await dataRepository.getVideos();
      emit(GetVideoResponseState(videoResponse, state));
    } catch (e) {
      print(e);
    }
  }
}
