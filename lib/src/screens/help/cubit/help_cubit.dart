import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/common/launch_url.dart';
import 'package:vipay/src/models/help/help_response.dart';
import 'package:simplest/simplest.dart';

part 'help_state.dart';
part 'help_cubit.freezed.dart';

class HelpCubit extends BaseCubit<HelpState> {
  HelpCubit() : super(Initial(Data(helpResponse: null, isLoading: false)));

  void getHelp() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final helpResponse = await dataRepository.getHelp();

      emit(Loaded(state.data.copyWith(helpResponse: helpResponse)));
    } catch (e) {
      showErrorMessage('get_help_failed'.tr);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }

  Future<void> launchUrl(String path, UrlScheme urlScheme) async {
    try {
      await launchURL(path, urlScheme);
    } catch (e) {
      showErrorMessage('launch_url_failed'.tr);
    }
  }
}
