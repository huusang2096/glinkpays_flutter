import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/models/SettingResponse.dart';
import 'package:vipay/src/models/TransactionResponse.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/cart/add_cart_request_model.dart';
import 'package:vipay/src/models/cart/add_cart_response_model.dart';
import 'package:vipay/src/models/cart/cart_response_model.dart';
import 'package:vipay/src/models/cart/delete_cart_response_model.dart';
import 'package:vipay/src/models/cart/order_request.dart';
import 'package:vipay/src/models/cart/order_response.dart';
import 'package:vipay/src/models/change_password/change_password_response.dart';
import 'package:vipay/src/models/chart_gas_response.dart';
import 'package:vipay/src/models/check_login_via_model.dart';
import 'package:vipay/src/models/check_transaction_fee_response.dart';
import 'package:vipay/src/models/exchange_money/exchange_money_complete_request.dart';
import 'package:vipay/src/models/exchange_money/exchange_money_complete_response.dart';
import 'package:vipay/src/models/exchange_money/get_currencies_exchange_rate_response.dart';
import 'package:vipay/src/models/exchange_money/get_currency_list_has_transaction.response.dart';
import 'package:vipay/src/models/food.dart';
import 'package:vipay/src/models/forgot_pass/forgot_password_request.dart';
import 'package:vipay/src/models/help/help_response.dart';
import 'package:vipay/src/models/history/history_response.dart';
import 'package:vipay/src/models/home/banner_response.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/models/home/food_detail_response.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/home/notification_response.dart';
import 'package:vipay/src/models/home/video_response.dart';
import 'package:vipay/src/models/list_country_response.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:vipay/src/models/notification_detail_response.dart';
import 'package:vipay/src/models/pending_wallet_response.dart';
import 'package:vipay/src/models/policy/accept_policy_response.dart';
import 'package:vipay/src/models/policy/policy_response.dart';
import 'package:vipay/src/models/profile/profile_request.dart';
import 'package:vipay/src/models/register/register_response.dart';
import 'package:vipay/src/models/request/check_phone_model.dart';
import 'package:vipay/src/models/request/login_request_model.dart';
import 'package:vipay/src/models/request/register_request_model.dart';
import 'package:vipay/src/models/request_money/request_currency_response.dart';
import 'package:vipay/src/models/resend_email_response.dart';
import 'package:vipay/src/models/search/search_exactly_response.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/models/search/store_response.dart';
import 'package:vipay/src/models/store/store_show_all_response.dart';
import 'package:vipay/src/models/support_ticket/ticket_response.dart';
import 'package:vipay/src/models/support_ticket/ticket_request.dart';
import 'package:vipay/src/models/support_ticket/update_ticket_response.dart';
import 'package:vipay/src/models/transaction_detail_response.dart';
import 'package:vipay/src/models/transfer_money/check_voucher_response.dart';
import 'package:vipay/src/models/transfer_money/send_money_merchan_request.dart';
import 'package:vipay/src/models/transfer_money/get_balance_available_response.dart';
import 'package:vipay/src/models/transfer_money/get_currency_response.dart';
import 'package:vipay/src/models/transfer_money/send_money_merchant_response.dart';
import 'package:vipay/src/models/transfer_money/send_money_request.dart';
import 'package:vipay/src/models/transfer_money/send_money_response.dart';
import 'package:vipay/src/models/update_fcm_response.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';
import 'package:vipay/src/models/withdraw/withdraw_money_request.dart';
import 'package:vipay/src/models/withdraw/withdraw_money_response.dart';
import 'package:vipay/src/network/rest_client.dart';
import 'package:vipay/src/repository/user_repository.dart';
import 'package:vipay/src/screens/deposit/models/bank_account_response_model.dart';
import 'package:vipay/src/screens/deposit/models/baokim_payment_response.dart';
import 'package:vipay/src/screens/deposit/models/braintree_client_token_response.dart';
import 'package:vipay/src/screens/deposit/models/braintree_key_request.dart';
import 'package:vipay/src/screens/deposit/models/braintree_key_response.dart';
import 'package:vipay/src/screens/deposit/models/braintree_payment_store_request.dart';
import 'package:vipay/src/screens/deposit/models/braintree_payment_store_response.dart';
import 'package:vipay/src/screens/deposit/models/stripe_key_request.dart';
import 'package:vipay/src/screens/deposit/models/stripe_key_response.dart';
import 'package:vipay/src/screens/deposit/models/stripe_payment_store_request_model.dart';
import 'package:vipay/src/screens/deposit/models/stripe_payment_store_response_model.dart';
import 'package:vipay/src/screens/with_draw_screen/models/add_bank_request.dart';
import 'package:vipay/src/screens/with_draw_screen/models/add_bank_response.dart';
import 'package:vipay/src/screens/with_draw_screen/models/delete_bank_response.dart';
import 'package:vipay/src/screens/with_draw_screen/models/update_bank_request.dart';

enum VoucherQuery { nutrition, restaurant, category, extras, foodReviews }

@lazySingleton
class DataRepository implements RestClient {
  final logger = Logger();
  final dio = Dio();
  RestClient _client;
  final _appPref = locator<AppPref>();

  DataRepository() {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    _client = RestClient(dio);
    loadAuthHeader();
  }

  void loadAuthHeader() async {
    dio.options.headers['X-Requested-With'] = 'XMLHttpRequest';
    dio.options.headers['Authorization'] = 'Bearer ${_appPref.token}';
    //dio.options.headers['Authorization'] = 'Bearer ' + await getUserToken();
    dio.options.headers['Accept-Language'] = _appPref.langCode;
  }

  Future<String> getUserToken() {
    return getCurrentUser().then((user) => user.apiToken ??= '');
  }

  @override
  Future<BaseResponse> checkDuplicateEmail(String email) {
    return _client.checkDuplicateEmail(email);
  }

  @override
  Future<BaseResponse> checkDuplicatePhone(CheckDuplicatePhoneRequest request) {
    return _client.checkDuplicatePhone(request);
  }

  @override
  Future<UserResponse> login(LoginRequest request) {
    return _client.login(request);
  }

  @override
  Future<CheckLoginVia> logout() {
    return _client.logout();
  }

  @override
  Future<CategoryResponse> getCategories() {
    return _client.getCategories();
  }

  @override
  Future<RegisterResponse> registerUser(RegisterRequest registerRequest) {
    return _client.registerUser(registerRequest);
  }

  @override
  Future<HistoryResponse> getHistory() {
    return _client.getHistory();
  }

  @override
  Future<VoucherTypeResponse> getVoucherType({String apiToken}) {
    final _appPref = locator<AppPref>();
    String _apiToken = _appPref.token;
    return _client.getVoucherType(apiToken: _apiToken);
  }

  @override
  Future<UserResponse> updateProfile({ProfileRequest profileRequest}) {
    return _client.updateProfile(profileRequest: profileRequest);
  }

  @override
  Future<FoodDatasResponse> getVoucherInRestaurant({String id}) {
    return _client.getVoucherInRestaurant(id: id);
  }

  @override
  Future<CartResponse> getCart(String apiToken, String userId) {
    return _client.getCart(apiToken, userId);
  }

  @override
  Future<AddCartResponse> addtoCart(String apiToken, AddCartRequest request) {
    return _client.addtoCart(apiToken, request);
  }

  @override
  Future<DeleteCartResponse> deleteCart(String apiToken, int id) {
    return _client.deleteCart(apiToken, id);
  }

  @override
  Future<UserResponse> updateProfileImg({File file}) {
    return _client.updateProfileImg(file: file);
  }

  @override
  Future<FoodDatasResponse> getTrendingFoods({String apiUser}) {
    return _client.getTrendingFoods(apiUser: apiUser);
  }

  @override
  Future<FoodDatasResponse> getVouchers({String apiUser, String withQueries}) {
    return _client.getVouchers(apiUser: apiUser, withQueries: withQueries);
  }

  @override
  Future<AvailableResponse> getUserAvailable() {
    return _client.getUserAvailable();
  }

  @override
  Future<SearchResponse> searchUser({String searchContent, int currentPage}) {
    return _client.searchUser(
        searchContent: searchContent, currentPage: currentPage);
  }

  @override
  Future<UserResponse> getUserProfile() {
    return _client.getUserProfile();
  }

  @override
  Future<TransactionResponse> getTransactions() {
    return _client.getTransactions();
  }

  @override
  Future<GetCurrencyResponse> getCurrency() {
    return _client.getCurrency();
  }

  @override
  Future<SendMoneyResponse> sendMoney(SendMoneyRequest sendMoneyRequest) {
    return _client.sendMoney(sendMoneyRequest);
  }

  @override
  Future<VideoResponse> getVideos() {
    return _client.getVideos();
  }

  @override
  Future<void> resetPassword(ForgotPasswordRequest forgotPasswordRequest) {
    return _client.resetPassword(forgotPasswordRequest);
  }

  @override
  Future<RequestCurrencyResponse> getRequestCurrency() {
    return _client.getRequestCurrency();
  }

  @override
  Future<BankAccountResponse> getBankAccount() {
    return _client.getBankAccount();
  }

  @override
  Future<SearchExactlyResponse> findExactUser(String phone) {
    return _client.findExactUser(phone);
  }

  @override
  Future<GetBalanceAvailableResponse> getBalanceAvailable() {
    return _client.getBalanceAvailable();
  }

  @override
  Future<WithdrawMoneyResponse> withdrawMoney(
      WithdrawMoneyRequest withdrawMoneyRequest) {
    return _client.withdrawMoney(withdrawMoneyRequest);
  }

  @override
  Future<StripePaymentStoreResponse> stripePaymentStore(
      StripePaymentStoreRequest stripePaymentStoreRequest) {
    return _client.stripePaymentStore(stripePaymentStoreRequest);
  }

  @override
  Future<UserResponse> updateUserInherited(Inherited inherited) {
    return _client.updateUserInherited(inherited);
  }

  @override
  Future<UserResponse> updateSignature(
      File signatureImage, String verifyToken) {
    return _client.updateSignature(signatureImage, verifyToken);
  }

  @override
  Future<AcceptPolicyResponse> acceptPolicy(int ruleId, int versionNumber) {
    return _client.acceptPolicy(ruleId, versionNumber);
  }

  @override
  Future<PolicyResponse> getPolicies() {
    return _client.getPolicies();
  }

  @override
  Future<AddBankResponse> addBank(AddBankRequest addBankRequest) {
    return _client.addBank(addBankRequest);
  }

  @override
  Future<StripeKeyResponse> getKeyStripe(StripeKeyRequest stripeKeyRequest) {
    return _client.getKeyStripe(stripeKeyRequest);
  }

  @override
  Future<BrainTreeKeyResponse> getKeyBrainTree(
      BrainTreeKeyRequest brainTreeKeyRequest) {
    return _client.getKeyBrainTree(brainTreeKeyRequest);
  }

  @override
  Future<BrainTreeClientTokenResponse> getClientTokenBrainTree(
      BrainTreeKeyRequest brainTreeKeyRequest) {
    return _client.getClientTokenBrainTree(brainTreeKeyRequest);
  }

  @override
  Future<BrainTreePaymentStoreResponse> brainTreePaymentStore(
      BrainTreePaymentStoreRequest brainTreePaymentStoreRequest) {
    return _client.brainTreePaymentStore(brainTreePaymentStoreRequest);
  }

  @override
  Future<MyVoucherOrderResponse> getMyVoucher({String apiToken}) async {
    return getUserToken()
        .then((token) => _client.getMyVoucher(apiToken: apiToken));
  }

  @override
  Future<BaseModel> useVoucher(String code, {String apiToken}) {
    return getUserToken()
        .then((token) => _client.useVoucher(code, apiToken: apiToken));
  }

  @override
  Future<ExchangeMoneyCompleteResponse> exchangeMoney(
      ExchangeMoneyCompleteRequest request) {
    return _client.exchangeMoney(request);
  }

  @override
  Future<GetCurrenciesExchangeRateResponse> getCurrenciesExchangeRate() {
    return _client.getCurrenciesExchangeRate();
  }

  @override
  Future<GetCurrencyListHasTransaction> getListCurrencyHasTransaction() {
    return _client.getListCurrencyHasTransaction();
  }

  @override
  Future<StoreResponse> searchListStore(
      {String searchContent,
      String searchFields,
      String myLon,
      String myLat,
      String areaLon,
      String areaLat,
      String orderBy,
      String limit,
      int radius}) {
    return _client.searchListStore(
        searchContent: searchContent,
        searchFields: searchFields,
        myLon: myLon,
        myLat: myLat,
        areaLat: areaLat,
        areaLon: areaLon,
        orderBy: orderBy,
        limit: limit,
        radius: radius);
  }

  @override
  Future<FoodDatasResponse> searchVoucher(
      {String categoryID,
      String isTrending,
      String keyword,
      String foodTypeIds,
      String distance}) {
    return _client.searchVoucher(
        categoryID: categoryID,
        isTrending: isTrending,
        keyword: keyword,
        foodTypeIds: foodTypeIds,
        distance: distance);
  }

  @override
  Future<OrderResponse> order(OrderRequest request, {String apiToken}) {
    getUserToken().then((value) => apiToken = value);
    return _client.order(request, apiToken: apiToken);
  }

  @override
  Future<NotificationResponse> getNotification() {
    return _client.getNotification();
  }

  @override
  Future<UpdateFcmResponse> updateFcmToken(
      {@required String deviceId,
      @required String platform,
      @required String fcmToken}) {
    return _client.updateFcmToken(
        deviceId: deviceId, platform: platform, fcmToken: fcmToken);
  }

  @override
  Future<TransactionDetailResponse> getDetailTransaction(int id) {
    return _client.getDetailTransaction(id);
  }

  @override
  Future<ChartGasResponse> getDataChartGas() {
    return _client.getDataChartGas();
  }

  @override
  Future<BaseModel> updateCurrentLocation(
      {double lat, double lng, String city}) {
    return _client.updateCurrentLocation(lat: lat, lng: lng, city: city);
  }

  @override
  Future<SettingResponse> getSettings() {
    return _client.getSettings();
  }

  @override
  Future<FoodDetailResponse> getFoodDetail(String id, String query) {
    return _client.getFoodDetail(id, query);
  }

  @override
  Future<BannerResponse> getBanner() {
    return _client.getBanner();
  }

  @override
  Future<TicketResponse> getSupportTicket() {
    return _client.getSupportTicket();
  }

  @override
  Future<UpdateTicketResponse> updateTicket(TicketRequest ticketRequest) {
    return _client.updateTicket(ticketRequest);
  }

  @override
  Future<CheckVoucherResponse> checkVoucher(
      SendMoneyMerchantRequest sendMoneyMerchantRequest, String apiToken) {
    return _client.checkVoucher(sendMoneyMerchantRequest, apiToken);
  }

  @override
  Future<SendMoneyMerchantResponse> sendMoneyMerchant(
      SendMoneyMerchantRequest sendMoneyMerchantRequest, String apiToken) {
    return _client.sendMoneyMerchant(sendMoneyMerchantRequest, apiToken);
  }

  @override
  Future<BaseModel> updateDocument(String identityType, String identity_number,
      List<File> identityFile, String verifyToken) {
    return _client.updateDocument(
        identityType, identity_number, identityFile, verifyToken);
  }

  @override
  Future<HelpResponse> getHelp() {
    return _client.getHelp();
  }

  @override
  Future<ChangePasswordResponse> changePassword(
      {String oldPassword, String password, String confirmPassword}) {
    return _client.changePassword(
      oldPassword: oldPassword,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

  @override
  Future<ResendEmailresponse> resendEmail() {
    return _client.resendEmail();
  }

  @override
  Future<StoreShowAllResponse> getAllStore(String apiToken) {
    return _client.getAllStore(apiToken);
  }

  @override
  Future<FoodDatasResponse> getAllVoucher() {
    return _client.getAllVoucher();
  }

  @override
  Future<PendingWalletResponse> getListPendingWallet() {
    return _client.getListPendingWallet();
  }

  @override
  Future<BaoKimPaymentResponse> paymentBaoKim(
      {int amount, int currId, int paymentMethodId}) {
    return _client.paymentBaoKim(
        amount: amount, currId: currId, paymentMethodId: paymentMethodId);
  }

  @override
  Future<CheckTransactionFeeResponse> getFeeTransaction(
      {String currId, String amount, String totalFee, int receiverId}) {
    return _client.getFeeTransaction(
        amount: amount,
        currId: currId,
        totalFee: totalFee,
        receiverId: receiverId);
  }

  @override
  Future<AddBankResponse> updateBank(UpdateBankRequest updateBankRequest) {
    return _client.updateBank(updateBankRequest);
  }

  @override
  Future<DeleteBankResponse> deleteBank(int id) {
    return _client.deleteBank(id);
  }

  @override
  Future<ListCountryResponse> getListCountry() {
    return _client.getListCountry();
  }

  @override
  Future<NofiticationDetailResponse> getNotificationDetail(int id) {
    return _client.getNotificationDetail(id);
  }
}
