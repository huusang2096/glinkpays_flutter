import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart'
    // ignore: library_prefixes
    as transitionsType;
import 'package:vipay/config/app_config.dart' as config;
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:simplest/simplest.dart';

import 'generated/locales.g.dart';
import 'locator.dart';
import 'route_generator.dart';
import 'src/common/config.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// Auto hide keyboard while clicking outside
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: RefreshConfiguration(
        headerBuilder: () => MaterialClassicHeader(
          semanticsLabel: '',
          semanticsValue: '',
          color: Colors.blue,
        ),
        child: GetMaterialApp(
          locale: supportedLocales.firstWhere(
              (locate) => locate.languageCode == locator<AppPref>().langCode),
          supportedLocales: supportedLocales,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          fallbackLocale: Locale('vi'),
          translationsKeys: AppTranslation.translations,
          navigatorKey: locator<NavigationService>().navigatorKey,
          theme: _buildThemeData(context),
          // darkTheme: _darkTheme(context),
          title: kAppName,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generateRoute,
          defaultTransition: transitionsType.Transition.fade,
        ),
      ),
    );
  }

  ThemeData _buildThemeData(BuildContext context) {
    //   return ThemeData(
    //       appBarTheme: AppBarTheme(
    //           color: Colors.white, iconTheme: IconThemeData(color: Colors.black)),
    //       primaryColor: primaryColor,
    //       primaryTextTheme:
    //           GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
    //       textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme));
    // }
    return ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.light,
        accentColor: config.Colors().mainColor(1),
        focusColor: config.Colors().accentColor(1),
        hintColor: config.Colors().secondColor(1),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
        primaryTextTheme:
            GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        appBarTheme: AppBarTheme(
            color: colorBackgroundAppBar,
            iconTheme:
                Theme.of(context).iconTheme.copyWith(color: Colors.white),
            textTheme:
                Theme.of(context).textTheme.apply(bodyColor: Colors.white)));
  }

  /*_darkTheme(BuildContext context) {
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
  }*/
}
