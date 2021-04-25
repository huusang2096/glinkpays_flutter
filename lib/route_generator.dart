import 'package:flutter/material.dart';
import 'package:vipay/src/screens/cart/cart_screen.dart';
import 'package:vipay/src/screens/change_password/change_password_screen.dart';
import 'package:vipay/src/screens/chatbox/chatbox_tab_screen.dart';
import 'package:vipay/src/screens/deposit/deposit_add_card_screen.dart';
import 'package:vipay/src/screens/deposit/deposit_screen.dart';
import 'package:vipay/src/screens/forgot_password/forgot_password_screen.dart';
import 'package:vipay/src/screens/help/help_screen.dart';
import 'package:vipay/src/screens/history/history_screen.dart';
import 'package:vipay/src/screens/home/widget/video_play_widget.dart';
import 'package:vipay/src/screens/information_app/information_app_screen.dart';
import 'package:vipay/src/screens/inheritance/inheritance_screen.dart';
import 'package:vipay/src/screens/languages/languages_screen.dart';
import 'package:vipay/src/screens/login/login_screen.dart';
import 'package:vipay/src/screens/my_qrcode/my_qrcode_screen.dart';
import 'package:vipay/src/screens/my_voucher/my_voucher_screen.dart';
import 'package:vipay/src/screens/my_voucher/use_my_voucher_screen.dart';
import 'package:vipay/src/screens/notification/notification_detail_screen.dart';
import 'package:vipay/src/screens/policy/policy_screen.dart';
import 'package:vipay/src/screens/profile/edit_profile_screen.dart';
import 'package:vipay/src/screens/profile/profile_screen.dart';
import 'package:vipay/src/screens/register/register_screen.dart';
import 'package:vipay/src/screens/sale/sale_detail_screen.dart';
import 'package:vipay/src/screens/sale/sale_screen.dart';
import 'package:vipay/src/screens/search_category/search_voucher_category.dart';
import 'package:vipay/src/screens/settings/settings_screen.dart';
import 'package:vipay/src/screens/splash/splash_screen.dart';
import 'package:vipay/src/screens/store/search/search_store.dart';
import 'package:vipay/src/screens/store/store_screen.dart';
import 'package:vipay/src/screens/store/store_show_all.dart';
import 'package:vipay/src/screens/store/store_voucher_screen.dart';
import 'package:vipay/src/screens/support_ticket/support_ticket_detail_screen.dart';
import 'package:vipay/src/screens/tab/tab_screen.dart';
import 'package:vipay/src/screens/transfer/transfer_confirm_screen.dart';
import 'package:vipay/src/screens/transfer/transfer_screen.dart';
import 'package:vipay/src/screens/transfer/transfer_select_voucher_screen.dart';
import 'package:vipay/src/screens/transfer_select_user/transfer_scan_qr_code_screen.dart';
import 'package:vipay/src/screens/transfer_select_user/transfer_select_user_screen.dart';
import 'package:vipay/src/screens/verification/verification_screen.dart';
import 'package:vipay/src/screens/videos/all_videos_screen.dart';
import 'package:vipay/src/screens/voucher/search_voucher.dart';
import 'package:vipay/src/screens/voucher_list/voucher_list_screen.dart';
import 'package:vipay/src/screens/wallet/wallet.dart';
import 'package:vipay/src/screens/wallet/wallet_show_detail_transaction.dart';
import 'package:vipay/src/screens/wallet/wallet_showall_transactions.dart';
import 'package:vipay/src/screens/with_draw_screen/withdraw_addbank_screen.dart';
import 'package:vipay/src/screens/with_draw_screen/withdraw_editbank_screen.dart';
import 'package:vipay/src/screens/with_draw_screen/withdraw_screen.dart';
import 'src/screens/notification/notifications_screen.dart';
import 'package:vipay/src/screens/stock_certificate/stock_certificate_screen.dart';
import 'package:vipay/src/screens/support_ticket/support_ticket_screen.dart';

class RouteGenerator {
  static const String registerScreen = '/registerScreen';
  static const String storeScreen = '/storeScreen';
  static const String loginScreen = '/Login';
  static const String historyScreen = '/historyScreen';
  static const String profileScreen = '/profileScreen';
  static const String cartScreen = '/cartScreen';
  static const String voucherScreen = 'voucherScreen';
  static const String storeVoucherScreen = '/storeVoucherScreen';

  // static const String showAllVoucher = '/showAllVoucher';
  static const String editProfileScreen = '/EditProfileScreen';
  static const String chatBoxScreen = 'chatBoxScreen';
  static const String saleScreen = 'saleScreen';
  static const String saleDetailScreen = 'saleDetailScreen';
  static const String depositScreen = '/depositScreen';

  // static const String reLoginScreen = '/reLoginScreen';
  static const String transferSelectUserScreen = '/transferSelectUserScreen';
  static const String myVoucherScreen = '/myVoucherScreen';
  static const String useMyVoucherScreen = '/useMyVoucherScreen';
  static const String helpScreen = '/helpScreen';
  static const String settingScreen = '/settingScreen';
  static const String changePasswordScreen = '/changePassWordScreen';
  static const String informationAppScreen = '/informationAppScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String transferScreen = '/transferScreen';
  static const String withDrawScreen = '/withDrawScreen';
  static const String scanQrCodeScreen = '/scanQrCodeScreen';
  static const String videoScreen = '/videoScreen';
  static const String allvideoScreen = '/allvideoScreen';
  static const String tabScreen = '/Tab';
  static const String myQrCodeScreen = '/myQrCodeScreen';
  static const String languagesScreen = '/languagesScreen';
  static const String storeShowAll = '/storeShowAll';
  static const String splashScreen = '/Splash';
  static const String voucherListScreen = '/voucherListScreen';
  static const String depositAddCardScreen = '/depositAddCardScreen';
  static const String inheritanceScreen = '/inheritanceScreen';
  static const String policyScreen = '/policyScreen';
  static const String withdrawAddBankScreen = '/withdrawAddBankScreen';
  static const String searchStore = '/searchStore';
  static const String searchVoucher = '/searchVoucher';
  static const String notificationScreen = '/notificationScreen';
  static const String walletScreen = '/Wallets';
  static const String searchVoucherCategoryScreen =
      '/searchVoucherCategoryScreen';
  static const String walletShowAllTransactions = '/walletShowAllTransactions';
  static const String walletShowDetailTransaction =
      '/walletShowDetailTransaction';
  static const String transferSelectVoucherScreen =
      '/transferSelectVoucherScreen';
  static const String stockCertificateScreen = '/stockCertificateScreen';
  static const String supportTicketScreen = '/supportTicketScreen';
  static const String transferConfirmScreen = '/transferConfirmScreen';
  static const String supportTicketDetailScreen = '/supportTicketDetailScreen';
  static const String verificationScreen = '/verificationScreen';
  static const String notificationDetail = '/notificationDetailScreen';
  static const String webViewBaoKim = '/webViewBaoKim';
  static const String editBankWithDraw = '/editBankWithDraw';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    print(settings.name);
    switch (settings.name) {
      case '/':
      case splashScreen:
        return MaterialPageRoute(
            builder: (_) => SplashScreen.provider(), settings: settings);
      case loginScreen:
        final map = args as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => LoginScreen.provider(), settings: settings);
      case allvideoScreen:
        return MaterialPageRoute(
            builder: (_) => AllVideoScreen.provider(), settings: settings);
      case forgotPasswordScreen:
        return MaterialPageRoute(
            builder: (_) => ForgotPasswordScreen.provider(),
            settings: settings);
      case profileScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) =>
                ProfileScreen.provider(profileResponse: map['profileResponse']),
            settings: settings);
      case walletScreen:
        return MaterialPageRoute(
            builder: (_) => MyWalletWidget.provider(), settings: settings);
      // case '/WebView':
      //   final url = (args as Map)['url'].toString();
      //   final title = (args as Map)['title'].toString();
      //   return MaterialPageRoute(
      //       builder: (_) => WebView(url: url, title: title));
      // case '/SearchVoucher':
      //   return MaterialPageRoute(
      //       builder: (_) => SearchResultWidget(heroTag: 'search'));
      // case showAllVoucher:
      // final routeArgs = args as RouteArgument;
      // final List<String> categoriesSelected = <String>[];
      // if (routeArgs != null) {
      //   categoriesSelected.add(routeArgs.id);
      // }
      // return MaterialPageRoute(
      //     builder: (_) =>
      //         ShowAllVoucher(categoriesSelected: categoriesSelected));
      case registerScreen:
        return MaterialPageRoute(
            builder: (_) => RegisterScreen.provider(), settings: settings);
      case historyScreen:
        return MaterialPageRoute(
            builder: (_) => HistoryScreen.provider(), settings: settings);
      case storeScreen:
        final map = args as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => StoreScreen.provider(
                restaurant: map['restaurant'], heroTag: map['heroTag']),
            settings: settings);
      case tabScreen:
        return MaterialPageRoute(
            builder: (_) => TabScreen.provider(), settings: settings);
      case storeVoucherScreen:
        final map = args as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => StoreVoucherScreen.provider(
                heroTag: map['heroTag'],
                idVoucher: map['idVoucher'],
                isExistStoreScreen: map['isExistStoreScreen'] ?? true),
            settings: settings);
      case cartScreen:
        return MaterialPageRoute(
            builder: (_) => CartScreen.provider(), settings: settings);
      case editProfileScreen:
        return MaterialPageRoute(
            builder: (_) => EditProfileScreen.provider(), settings: settings);
      case chatBoxScreen:
        return MaterialPageRoute(
            builder: (_) => ChatBoxScreen.provider(), settings: settings);
      case saleScreen:
        final map = args as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => SaleScreen.provider(
                vouchers: map['vouchers'],
                listFunctionNavigationBar: map['listFunctionNavigationBar'],
                listTitleNavigationBar: map['listTitleNavigationBar']),
            settings: settings);
      case saleDetailScreen:
        final map = args as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => SaleDetailScreen.provider(
                voucher: map['voucher'],
                heroTag: map['heroTag'],
                listFunctionNavigationBar: map['listFunctionNavigationBar'],
                listTitleNavigationBar: map['listTitleNavigationBar']),
            settings: settings);
      case depositScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) =>
                DepositScreen.provider(depositType: map['depositType']),
            settings: settings);
      case transferSelectUserScreen:
        return MaterialPageRoute(
            builder: (_) => TransferSelectUserScreen.provider(),
            settings: settings);
      case myVoucherScreen:
        return MaterialPageRoute(
            builder: (_) => MyVoucherScreen.provider(), settings: settings);
      case useMyVoucherScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => UseMyVoucherScreen.provider(item: map['item']),
            settings: settings);
      case helpScreen:
        return MaterialPageRoute(
            builder: (_) => HelpScreen.provider(), settings: settings);
      case settingScreen:
        return MaterialPageRoute(
            builder: (_) => SettingScreen.provider(), settings: settings);
      case videoScreen:
        final map = args as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => PlayVideoWidget(map['video']), settings: settings);
      case changePasswordScreen:
        return MaterialPageRoute(
            builder: (_) => ChangePasswordScreen.provider(),
            settings: settings);
      case informationAppScreen:
        return MaterialPageRoute(
            builder: (_) => InformationAppScreen.provider(),
            settings: settings);
      case transferScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => TransferScreen.provider(user: map['user']));
      case withDrawScreen:
        return MaterialPageRoute(builder: (_) => WithDrawScreen.provider());
      case scanQrCodeScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => ScanQrCodeScreen.provider(
                isPopAndReturnData: map['isPopAndReturnData']),
            settings: settings);
      case myQrCodeScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => MyQrCodeScreen.provider(myId: map['myId']),
            settings: settings);
      case languagesScreen:
        return MaterialPageRoute(
            builder: (_) => LanguagesScreen.provider(), settings: settings);
      case storeShowAll:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => StoreShowAll.provider(), settings: settings);
      case voucherListScreen:
        return MaterialPageRoute(
            builder: (_) => VoucherListScreen.provider(args),
            settings: settings);
      case searchStore:
        return MaterialPageRoute(
            builder: (_) => SearchStoreWidget.provider(), settings: settings);
      case searchVoucher:
        return MaterialPageRoute(
            builder: (_) => SearchVoucherWidget.provider(), settings: settings);
      case inheritanceScreen:
        return MaterialPageRoute(
          builder: (_) => InheritanceScreen.provider(),
          settings: settings,
        );
      case policyScreen:
        return MaterialPageRoute(
            builder: (_) => PolicyScreen.provider(), settings: settings);
      case withdrawAddBankScreen:
        return MaterialPageRoute(
            builder: (_) => WithdrawAddBankScreen.provider(),
            settings: settings);
      case depositAddCardScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => DepositAddCardScreen.provider(
                stripePaymentStoreRequest: map['stripePaymentStoreRequest']),
            settings: settings);
      case notificationScreen:
        return MaterialPageRoute(
            builder: (_) => NotificationsScreen.provider(), settings: settings);
      case searchVoucherCategoryScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => SearchVoucherCategoryScreen.provider(
                  categoryKeyID: map['categoryId'],
                ),
            settings: settings);
      case walletShowAllTransactions:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => WalletShowAllTransactions(listData: map['data']),
            settings: settings);
      case walletShowDetailTransaction:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => WalletShowDetailTransaction.provider(
                idTransaction: map['idTransaction']),
            settings: settings);
      case transferSelectVoucherScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => TransferSelectVoucherScreen.provider(
                map['voucher'], map['money'], map['user']),
            settings: settings);
      case stockCertificateScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => StockCertificateScreen.provider(
                urlStockCertificate: map['urlStockCertificate']),
            settings: settings);
      case supportTicketScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) =>
                SupportTicketScreen.provider(titleTicket: map['titleTicket']),
            settings: settings);
      case transferConfirmScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => TransferConfirmScreen.provider(
                user: map['user'],
                selectedCurrency: map['selectedCurrency'],
                myVoucherOrder: map['myVoucherOrder'],
                checkVoucherResponse: map['checkVoucherResponse'],
                sendMoneyRequest: map['sendMoneyRequest'],
                feeResponse: map['feeResponse']));
      case supportTicketDetailScreen:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => SupportTicketDetailScreen(ticket: map['ticket']),
            settings: settings);
      case verificationScreen:
        return MaterialPageRoute(
            builder: (_) => VerificationScreen.provider(), settings: settings);
      case notificationDetail:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => NotificationDetailScreen.provider(
                notification: map['notification']),
            settings: settings);
      case editBankWithDraw:
        final map = args as Map<String, dynamic> ?? {};
        return MaterialPageRoute(
            builder: (_) => WithDrawEditBankScreen.provider(
                bankAccount: map['bankAccount']),
            settings: settings);
      default:
        throw '${settings.name} not implement yet';
    }
  }
}
