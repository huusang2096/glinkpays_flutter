import 'package:simplest/simplest.dart';

enum UrlScheme {
  browser,
  email,
  phone,
  sms,
}

Future<void> launchURL(String path, UrlScheme urlScheme) async {
  String urlString;
  switch (urlScheme) {
    case UrlScheme.browser:
      urlString = Uri.encodeFull(path);
      if (!urlString.contains('https')) {
        urlString = 'https://' + urlString;
      }
      break;

    case UrlScheme.email:
      urlString = Uri(scheme: 'mailto', path: path, queryParameters: {
        'subject': 'subject_support_email'.tr,
      }).toString();
      break;

    case UrlScheme.phone:
      urlString = Uri(
        scheme: 'tel',
        path: path,
      ).toString();
      break;

    default:
  }

  if (await canLaunch(urlString)) {
    final bool nativeAppLaunchSucceeded = await launch(
      urlString,
      forceSafariVC: false,
      forceWebView: false,
      universalLinksOnly: false,
    );
    if (!nativeAppLaunchSucceeded) {
      await launch(
        urlString,
        forceSafariVC: true,
      );
    }
  } else {
    print(urlString);
    throw 'Could not launch $urlString';
  }
}
