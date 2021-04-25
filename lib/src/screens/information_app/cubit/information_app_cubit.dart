import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info/package_info.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';

part 'information_app_state.dart';
part 'information_app_cubit.freezed.dart';

class InformationAppCubit extends BaseCubit<InformationAppState> {
  InformationAppCubit() : super(Initial(Data(version: '')));

  void loadData() async {
    final version = (await PackageInfo.fromPlatform()).version;
    emit(Loaded(state.data.copyWith(version: version)));
  }
}
