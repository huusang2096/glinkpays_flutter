import 'dart:core';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/app.dart';
import 'package:vipay/src/common/prefs.dart';
import 'package:vipay/src/utils/handle_dynamic_link.dart';
import 'package:vipay/src/utils/prefs_secure.dart';
import 'package:simplest/simplest.dart';

import 'locator.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if ((await Prefs.hasFirstRun())) {
    await PrefsSecure().deleteAll();
    await Prefs.saveHasFirstRun(hasFirstRun: false);
  }
  await DynamicLinkService.instance.handleDynamicLinks();
  await configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(Application());
}

/*
class MyApp extends AppMVC {
  // This widget is the root of your application.
//  /// Supply 'the Controller' for this application.
  MyApp({Key key}) : super(con: Controller(), key: key);

  final GlobalKey<NavigatorState> _navigatorKey =
      new GlobalKey<NavigatorState>();

  String _languageCode; // Default en

  @override
  Widget build(BuildContext context) {
    DeviceHelper().setContext(context);
    setupLanguages(context);
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) {
        if (brightness == Brightness.light) {
          return ThemeData(
            fontFamily: 'Poppins',
            primaryColor: Colors.white,
            brightness: brightness,
            accentColor: config.Colors().mainColor(1),
            focusColor: config.Colors().accentColor(1),
            hintColor: config.Colors().secondColor(1),
            textTheme: TextTheme(
              headline: TextStyle(
                  fontSize: 20.0, color: config.Colors().secondColor(1)),
              display1: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: config.Colors().secondColor(1)),
              display2: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: config.Colors().secondColor(1)),
              display3: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                  color: config.Colors().mainColor(1)),
              display4: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                  color: config.Colors().secondColor(1)),
              subhead: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: config.Colors().secondColor(1)),
              title: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: config.Colors().mainColor(1)),
              body1: TextStyle(
                  fontSize: 12.0, color: config.Colors().secondColor(1)),
              body2: TextStyle(
                  fontSize: 14.0, color: config.Colors().secondColor(1)),
              caption: TextStyle(
                  fontSize: 12.0, color: config.Colors().accentColor(1)),
            ),
          );
        } else {
          return ThemeData(
            fontFamily: 'Poppins',
            primaryColor: Color(0xFF252525),
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Color(0xFF2C2C2C),
            accentColor: config.Colors().mainDarkColor(1),
            hintColor: config.Colors().secondDarkColor(1),
            focusColor: config.Colors().accentDarkColor(1),
            textTheme: TextTheme(
              headline: TextStyle(
                  fontSize: 20.0, color: config.Colors().secondDarkColor(1)),
              display1: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: config.Colors().secondDarkColor(1)),
              display2: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: config.Colors().secondDarkColor(1)),
              display3: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                  color: config.Colors().mainDarkColor(1)),
              display4: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                  color: config.Colors().secondDarkColor(1)),
              subhead: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: config.Colors().secondDarkColor(1)),
              title: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: config.Colors().mainDarkColor(1)),
              body1: TextStyle(
                  fontSize: 12.0, color: config.Colors().secondDarkColor(1)),
              body2: TextStyle(
                  fontSize: 14.0, color: config.Colors().secondDarkColor(1)),
              caption: TextStyle(
                  fontSize: 12.0, color: config.Colors().secondDarkColor(0.6)),
            ),
          );
        }
      },
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'GlinkPay',
//            initialRoute: '/Splash',
          onGenerateRoute: RouteGenerator.generateRoute,
          debugShowCheckedModeBanner: false,
          theme: theme,
          navigatorKey: _navigatorKey,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
            EasyLocalization.of(context).delegate
          ],
          supportedLocales: EasyLocalization.of(context).supportedLocales,
          locale: EasyLocalization.of(context).locale,
        );
      },
    );
  }

  void setupLanguages(context) {
    // Languages
    Prefs.getLanguages().then((languageCode) {
      this._languageCode = languageCode;
    }).whenComplete(() {
      Devicelocale.currentLocale.then((value) {
        if (_languageCode == null) {
          final currentLanguageCode =
              Platform.isIOS ? value.split('-').first : value.split('_').first;
          Prefs.saveLanguages(currentLanguageCode);
          if (currentLanguageCode.contains('vi')) {
            EasyLocalization.of(context).locale =
                Locale.fromSubtags(languageCode: 'vi', countryCode: 'VN');
          } else {
            EasyLocalization.of(context).locale =
                Locale.fromSubtags(languageCode: 'en', countryCode: 'EN');
          }
        } else {
          if (_languageCode == 'vi') {
            EasyLocalization.of(context).locale =
                Locale.fromSubtags(languageCode: 'vi', countryCode: 'VN');
          } else if (_languageCode == 'en') {
            EasyLocalization.of(context).locale =
                Locale.fromSubtags(languageCode: 'en', countryCode: 'EN');
          }
        }
      });
    });
  }
}
*/
