import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';

part 'languages_state.dart';

class LanguagesCubit extends BaseCubit<LanguagesState> {
  LanguagesCubit() : super(LanguagesInitial());

  void onSelectLocale(Locale locale) async {
    try {
      emit(state.copyWith(isLoading: true));
      appPref.langCode = locale.languageCode;
      Get.updateLocale(locale);
      dataRepository.loadAuthHeader();
      emit(state);
    } catch (e) {
      handleAppError(e);
    }
    emit(state.copyWith(isLoading: false));
  }
}
