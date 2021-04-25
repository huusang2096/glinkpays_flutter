// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:simplest/simplest.dart' as _i6;

import 'locator.dart' as _i8;
import 'src/common/config.dart' as _i7;
import 'src/common/storage/app_prefs.dart' as _i3;
import 'src/repository/data_repository.dart' as _i5;
import 'src/services/cart_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  final stackedServicesModule = _$StackedServicesModule();
  final simplestServicesModule = _$SimplestServicesModule();
  await gh.factoryAsync<_i3.AppPref>(() => appModule.appPrefs,
      preResolve: true);
  gh.lazySingleton<_i4.CartService>(() => _i4.CartService());
  gh.lazySingleton<_i5.DataRepository>(() => _i5.DataRepository());
  gh.lazySingleton<_i6.DialogService>(
      () => stackedServicesModule.dialogService);
  gh.lazySingleton<_i6.IAppConfig>(() => _i7.AppConfig());
  gh.lazySingleton<_i6.LoadingService>(
      () => simplestServicesModule.loadingService);
  gh.lazySingleton<_i6.LocationService>(
      () => simplestServicesModule.locationService);
  gh.lazySingleton<_i6.MediaService>(() => appModule.mediaService);
  gh.lazySingleton<_i6.NavigationService>(
      () => stackedServicesModule.navigationService);
  gh.lazySingleton<_i6.NetworkActivityService>(
      () => simplestServicesModule.networkActivityService);
  await gh.factoryAsync<_i6.NotificationService>(
      () => simplestServicesModule.notificationService,
      preResolve: true);
  gh.lazySingleton<_i6.PhoneAuthService>(
      () => simplestServicesModule.phoneAuthService);
  gh.lazySingleton<_i6.SnackbarService>(
      () => stackedServicesModule.snackBarService);
  return get;
}

class _$AppModule extends _i8.AppModule {
  @override
  _i6.MediaService get mediaService => _i6.MediaService();
}

class _$StackedServicesModule extends _i8.StackedServicesModule {
  @override
  _i6.DialogService get dialogService => _i6.DialogService();
  @override
  _i6.NavigationService get navigationService => _i6.NavigationService();
  @override
  _i6.SnackbarService get snackBarService => _i6.SnackbarService();
}

class _$SimplestServicesModule extends _i8.SimplestServicesModule {
  @override
  _i6.LoadingService get loadingService => _i6.LoadingService();
  @override
  _i6.LocationService get locationService => _i6.LocationService();
  @override
  _i6.NetworkActivityService get networkActivityService =>
      _i6.NetworkActivityService();
  @override
  _i6.PhoneAuthService get phoneAuthService => _i6.PhoneAuthService();
}
