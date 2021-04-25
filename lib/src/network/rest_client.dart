import 'dart:io';

import 'package:retrofit/retrofit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
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
import 'package:vipay/src/models/login_response.dart';
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
import 'package:vipay/src/models/support_ticket/ticket_request.dart';
import 'package:vipay/src/models/support_ticket/ticket_response.dart';
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

part 'rest_client.g.dart';

@RestApi(baseUrl: apiBaseUrl)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  // Cart
  @GET(
      'api/coupon/carts?with=food;extras&search=user_id:{user_id}&searchFields=user_id:=')
  Future<CartResponse> getCart(
      @Query('api_token') String apiToken, @Path('user_id') String userId);

  @POST('api/payment/login')
  Future<UserResponse> login(@Body() LoginRequest request);

  @POST('api/payment/registration/duplicate-phone-number-check')
  Future<BaseResponse> checkDuplicatePhone(
      @Body() CheckDuplicatePhoneRequest request);

  @POST('api/payment/registration/duplicate-email-check')
  Future<BaseResponse> checkDuplicateEmail(@Body() String email);

  @GET('api/coupon/categories')
  Future<CategoryResponse> getCategories();

  @GET('api/coupon/foods'
      '?{api_token}with=restaurant&limit=10&is_trending=1')
  Future<FoodDatasResponse> getTrendingFoods(
      {@Query('api_token') String apiUser});

  @GET('api/coupon/foods?{api_token}')
  Future<FoodDatasResponse> getVouchers(
      {@Query('api_token') String apiUser, @Query('with') String withQueries});

  @GET('api/payment/available-balance')
  Future<AvailableResponse> getUserAvailable();

  @GET('api/payment/get-user-profile')
  Future<UserResponse> getUserProfile();

  @GET('api/payment/activityall?type=allTransactions')
  Future<TransactionResponse> getTransactions();

  @POST('api/payment/logout')
  Future<CheckLoginVia> logout();

  @POST('api/payment/registration')
  Future<RegisterResponse> registerUser(
      @Body() RegisterRequest registerRequest);

  @GET('api/payment/activityall?type=allTransactions')
  Future<HistoryResponse> getHistory();

  @GET('api/coupon/food_types')
  Future<VoucherTypeResponse> getVoucherType(
      {@Query('api_token') String apiToken});

  @POST('api/payment/update-user-profile')
  Future<UserResponse> updateProfile({@Body() ProfileRequest profileRequest});

  @POST('api/payment/update-current-location')
  Future<BaseModel> updateCurrentLocation(
      {@Field('latitude') double lat,
      @Field('longitude') double lng,
      @Field('city') String city});

  @POST('api/payment/upload-image')
  @MultiPart()
  Future<UserResponse> updateProfileImg({@Part() File file});

  @GET(
      '/api/coupon/foods?restaurant_ids[]={id}&with=nutrition;restaurant;category;extras;foodReviews')
  Future<FoodDatasResponse> getVoucherInRestaurant({
    @Path('id') String id,
  });

  @POST('/api/coupon/carts')
  Future<AddCartResponse> addtoCart(
      @Query('api_token') String apiToken, @Body() AddCartRequest request);

  @DELETE('api/coupon/carts/{id}')
  Future<DeleteCartResponse> deleteCart(
      @Query('api_token') String apiToken, @Path('id') int id);

  @GET('api/payment/search-user')
  Future<SearchResponse> searchUser(
      {@Query('search_content') String searchContent,
      @Query('current_page') int currentPage});

  @GET('api/payment/get-current-rate-prices')
  Future<GetCurrencyResponse> getCurrency();

  @POST('api/payment/send-money-vipay')
  Future<SendMoneyResponse> sendMoney(
      @Body() SendMoneyRequest sendMoneyRequest);

  @GET('api/payment/get-videos')
  Future<VideoResponse> getVideos();

  @POST('api/payment/forget-password-by-phone')
  @FormUrlEncoded()
  Future<void> resetPassword(
      @Body() ForgotPasswordRequest forgotPasswordRequest);

  @GET('api/payment/get-request-currency')
  Future<RequestCurrencyResponse> getRequestCurrency();

  @GET('api/payment/list-bank')
  Future<BankAccountResponse> getBankAccount();

  @POST('api/payment/deposit/stripe-payment-store')
  Future<StripePaymentStoreResponse> stripePaymentStore(
      @Body() StripePaymentStoreRequest stripePaymentStoreRequest);

  @GET('api/payment/find-user')
  Future<SearchExactlyResponse> findExactUser(@Query('phone') String phone);

  @GET('api/payment/available-balance')
  Future<GetBalanceAvailableResponse> getBalanceAvailable();

  @POST('api/payment/withdraw-money-pay')
  Future<WithdrawMoneyResponse> withdrawMoney(
      @Body() WithdrawMoneyRequest withdrawMoneyRequest);

  /// Inheritance and signature
  @POST('api/payment/update-user-inherited')
  Future<UserResponse> updateUserInherited(@Body() Inherited inherited);

  @POST('api/payment/upload-electronic-signature')
  Future<UserResponse> updateSignature(@Part(name: 'file') File signatureImage,
      @Part(name: 'verify_token') String verifyToken);

  @POST('api/payment/update-document-verifications')
  Future<BaseModel> updateDocument(
      @Part(name: 'identity_type') String identityType,
      @Part(name: 'identity_number') String identity_number,
      @Part(name: 'identity_file[]') List<File> identityFile,
      @Part(name: 'verify_token') String verifyToken);

  /// Policy and privacy
  @GET('api/payment/get-rules')
  Future<PolicyResponse> getPolicies();

  @POST('api/payment/accept-rule')
  Future<AcceptPolicyResponse> acceptPolicy(
      @Query('rule_id') int ruleId, @Query('version_number') int versionNumber);

  @POST('api/payment/store-bank')
  Future<AddBankResponse> addBank(@Body() AddBankRequest addBankRequest);

  @POST('api/payment/deposit/get-stripe-info')
  Future<StripeKeyResponse> getKeyStripe(
      @Body() StripeKeyRequest stripeKeyRequest);

  @POST('api/payment/deposit/get-braintree-info')
  Future<BrainTreeKeyResponse> getKeyBrainTree(
      @Body() BrainTreeKeyRequest brainTreeKeyRequest);

  @POST('api/payment/deposit/get-braintree-client-token')
  Future<BrainTreeClientTokenResponse> getClientTokenBrainTree(
      @Body() BrainTreeKeyRequest brainTreeKeyRequest);

  @POST('api/payment/deposit/braintree-payment-store')
  Future<BrainTreePaymentStoreResponse> brainTreePaymentStore(
      @Body() BrainTreePaymentStoreRequest brainTreePaymentStoreRequest);

  /// Vouchers
  @GET('api/coupon/voucher_orders')
  Future<MyVoucherOrderResponse> getMyVoucher(
      {@Query('api_token') String apiToken});

  @POST('api/coupon/use-voucher')
  Future<BaseModel> useVoucher(@Field('code') String code,
      {@Query('api_token') String apiToken});

  @POST('api/payment/exchange-money-complete')
  Future<ExchangeMoneyCompleteResponse> exchangeMoney(
      @Body() ExchangeMoneyCompleteRequest request);

  @GET('api/payment/get-current-rate-prices')
  Future<GetCurrenciesExchangeRateResponse> getCurrenciesExchangeRate();

  @GET('api/payment/get-currency-list-of-active-user-wallets-has-transaction')
  Future<GetCurrencyListHasTransaction> getListCurrencyHasTransaction();

  @GET('api/coupon/restaurants')
  Future<StoreResponse> searchListStore(
      {@Query('search') String searchContent,
      @Query('searchFields') String searchFields,
      @Query('myLon') String myLon,
      @Query('myLat') String myLat,
      @Query('areaLon') String areaLon,
      @Query('areaLat') String areaLat,
      @Query('orderBy') String orderBy,
      @Query('limit') String limit,
      @Query('radius') int radius});

  @GET('api/coupon/foods')
  Future<FoodDatasResponse> searchVoucher(
      {@Query('category_ids[]') String categoryID,
      @Query('is_trending') String isTrending,
      @Query('keyword') String keyword,
      @Query('food_type_ids[]') String foodTypeIds,
      @Query('distance') String distance});

  @POST('api/coupon/orders')
  Future<OrderResponse> order(@Body() OrderRequest request,
      {@Query('api_token') String apiToken});

  /// Notifications
  @POST('api/payment/notification/update-fcm-token')
  Future<UpdateFcmResponse> updateFcmToken(
      {@Field('device_id') String deviceId,
      @Field('platform') String platform,
      @Field('fcm_token') String fcmToken});

  @GET('api/payment/notification/list')
  Future<NotificationResponse> getNotification();

  @GET('api/payment/transaction-details')
  Future<TransactionDetailResponse> getDetailTransaction(
      @Query('tr_id') int id);

  @GET('api/payment/get-data-gas')
  Future<ChartGasResponse> getDataChartGas();

  @GET('api/coupon/settings')
  Future<SettingResponse> getSettings();

  @GET('api/coupon/foods/{id}')
  Future<FoodDetailResponse> getFoodDetail(
      @Path('id') String id, @Query('with') String query);

  @GET('api/payment/get-banners')
  Future<BannerResponse> getBanner();

  @GET('api/payment/ticket/list')
  Future<TicketResponse> getSupportTicket();

  @POST('api/payment/ticket/send')
  Future<UpdateTicketResponse> updateTicket(
      @Body() TicketRequest ticketRequest);

  @POST('api/coupon/check-voucher')
  Future<CheckVoucherResponse> checkVoucher(
      @Body() SendMoneyMerchantRequest sendMoneyMerchantRequest,
      @Query('api_token') String apiToken);

  @POST('api/coupon/user-apply-voucher')
  Future<SendMoneyMerchantResponse> sendMoneyMerchant(
      @Body() SendMoneyMerchantRequest sendMoneyMerchantRequest,
      @Query('api_token') String apiToken);

  @GET('api/payment/get-contact-info')
  Future<HelpResponse> getHelp();

  @POST('api/payment/update-password')
  Future<ChangePasswordResponse> changePassword(
      {@Field('password_old') String oldPassword,
      @Field('password') String password,
      @Field('password_confirmation') String confirmPassword});

  @POST('api/payment/resend-email-verify')
  Future<ResendEmailresponse> resendEmail();

  @GET('api/coupon/restaurants')
  Future<StoreShowAllResponse> getAllStore(@Query('api_token') String apiToken);

  @GET('api/coupon/foods')
  Future<FoodDatasResponse> getAllVoucher();

  @GET('api/payment/get-list-pending-wallet')
  Future<PendingWalletResponse> getListPendingWallet();

  @POST('api/payment/deposit/baokim-payment-store')
  Future<BaoKimPaymentResponse> paymentBaoKim(
      {@Field('amount') int amount,
      @Field('currency_id') int currId,
      @Field('payment_method_id') int paymentMethodId});

  @POST('api/payment/send-money-vipay-check-fees')
  Future<CheckTransactionFeeResponse> getFeeTransaction(
      {@Field('currency_id') String currId,
      @Field('amount') String amount,
      @Field('totalFees') String totalFee,
      @Field('receiver_id') int receiverId});

  @POST('api/payment/bank-update')
  Future<AddBankResponse> updateBank(
      @Body() UpdateBankRequest updateBankRequest);

  @GET('api/payment/list-countries')
  Future<ListCountryResponse> getListCountry();

  @POST('api/payment/delete-bank/{id}')
  Future<DeleteBankResponse> deleteBank(@Path('id') int id);

  @GET('api/payment/notification/detail/{id}')
  Future<NofiticationDetailResponse> getNotificationDetail(@Path('id') int id);
}
