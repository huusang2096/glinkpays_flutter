import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info/package_info.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:simplest/simplest.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends BaseCubit<SplashState> {
  SplashCubit() : super(Initial(Data()));

  void loadData() async {
    final version = (await PackageInfo.fromPlatform()).version;
    emit(Loaded(state.data.copyWith(version: version)));
    await Future.delayed(Duration(seconds: 2));
    await navigator.pushReplacementNamed(RouteGenerator.tabScreen);
  }
}
