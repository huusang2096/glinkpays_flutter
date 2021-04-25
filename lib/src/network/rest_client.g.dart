// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://51.79.143.110:8888/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<CartResponse> getCart(apiToken, userId) async {
    ArgumentError.checkNotNull(apiToken, 'apiToken');
    ArgumentError.checkNotNull(userId, 'userId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/carts?with=food;extras&search=user_id:$userId&searchFields=user_id:=',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CartResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserResponse> login(request) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BaseResponse> checkDuplicatePhone(request) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/registration/duplicate-phone-number-check',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BaseResponse> checkDuplicateEmail(email) async {
    ArgumentError.checkNotNull(email, 'email');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = email;
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/registration/duplicate-email-check',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<CategoryResponse> getCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/categories',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CategoryResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FoodDatasResponse> getTrendingFoods({apiUser}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiUser};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/foods?{api_token}with=restaurant&limit=10&is_trending=1',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FoodDatasResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FoodDatasResponse> getVouchers({apiUser, withQueries}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'api_token': apiUser,
      r'with': withQueries
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/foods?{api_token}',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FoodDatasResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<AvailableResponse> getUserAvailable() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/available-balance',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AvailableResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserResponse> getUserProfile() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-user-profile',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<TransactionResponse> getTransactions() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/activityall?type=allTransactions',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = TransactionResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<CheckLoginVia> logout() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/logout',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CheckLoginVia.fromJson(_result.data);
    return value;
  }

  @override
  Future<RegisterResponse> registerUser(registerRequest) async {
    ArgumentError.checkNotNull(registerRequest, 'registerRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(registerRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/registration',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = RegisterResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<HistoryResponse> getHistory() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/activityall?type=allTransactions',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = HistoryResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<VoucherTypeResponse> getVoucherType({apiToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/food_types',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = VoucherTypeResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserResponse> updateProfile({profileRequest}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(profileRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/update-user-profile',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BaseModel> updateCurrentLocation({lat, lng, city}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'latitude': lat, 'longitude': lng, 'city': city};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/update-current-location',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserResponse> updateProfileImg({file}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = FormData();
    if (file != null) {
      _data.files.add(MapEntry(
          'file',
          MultipartFile.fromFileSync(file.path,
              filename: file.path.split(Platform.pathSeparator).last)));
    }
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/upload-image',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FoodDatasResponse> getVoucherInRestaurant({id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/api/coupon/foods?restaurant_ids[]=$id&with=nutrition;restaurant;category;extras;foodReviews',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FoodDatasResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<AddCartResponse> addtoCart(apiToken, request) async {
    ArgumentError.checkNotNull(apiToken, 'apiToken');
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        '/api/coupon/carts',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AddCartResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<DeleteCartResponse> deleteCart(apiToken, id) async {
    ArgumentError.checkNotNull(apiToken, 'apiToken');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/carts/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = DeleteCartResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<SearchResponse> searchUser({searchContent, currentPage}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'search_content': searchContent,
      r'current_page': currentPage
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/search-user',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SearchResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<GetCurrencyResponse> getCurrency() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-current-rate-prices',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetCurrencyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<SendMoneyResponse> sendMoney(sendMoneyRequest) async {
    ArgumentError.checkNotNull(sendMoneyRequest, 'sendMoneyRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(sendMoneyRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/send-money-vipay',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SendMoneyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<VideoResponse> getVideos() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-videos',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = VideoResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<void> resetPassword(forgotPasswordRequest) async {
    ArgumentError.checkNotNull(forgotPasswordRequest, 'forgotPasswordRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(forgotPasswordRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    await _dio.request<void>('api/payment/forget-password-by-phone',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    return null;
  }

  @override
  Future<RequestCurrencyResponse> getRequestCurrency() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-request-currency',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = RequestCurrencyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BankAccountResponse> getBankAccount() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/list-bank',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BankAccountResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<StripePaymentStoreResponse> stripePaymentStore(
      stripePaymentStoreRequest) async {
    ArgumentError.checkNotNull(
        stripePaymentStoreRequest, 'stripePaymentStoreRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(stripePaymentStoreRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/deposit/stripe-payment-store',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = StripePaymentStoreResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<SearchExactlyResponse> findExactUser(phone) async {
    ArgumentError.checkNotNull(phone, 'phone');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'phone': phone};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/find-user',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SearchExactlyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<GetBalanceAvailableResponse> getBalanceAvailable() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/available-balance',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetBalanceAvailableResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<WithdrawMoneyResponse> withdrawMoney(withdrawMoneyRequest) async {
    ArgumentError.checkNotNull(withdrawMoneyRequest, 'withdrawMoneyRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(withdrawMoneyRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/withdraw-money-pay',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WithdrawMoneyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserResponse> updateUserInherited(inherited) async {
    ArgumentError.checkNotNull(inherited, 'inherited');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(inherited?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/update-user-inherited',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserResponse> updateSignature(signatureImage, verifyToken) async {
    ArgumentError.checkNotNull(signatureImage, 'signatureImage');
    ArgumentError.checkNotNull(verifyToken, 'verifyToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
        'file',
        MultipartFile.fromFileSync(signatureImage.path,
            filename: signatureImage.path.split(Platform.pathSeparator).last)));
    if (verifyToken != null) {
      _data.fields.add(MapEntry('verify_token', verifyToken));
    }
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/upload-electronic-signature',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BaseModel> updateDocument(
      identityType, identity_number, identityFile, verifyToken) async {
    ArgumentError.checkNotNull(identityType, 'identityType');
    ArgumentError.checkNotNull(identity_number, 'identity_number');
    ArgumentError.checkNotNull(identityFile, 'identityFile');
    ArgumentError.checkNotNull(verifyToken, 'verifyToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = FormData();
    if (identityType != null) {
      _data.fields.add(MapEntry('identity_type', identityType));
    }
    if (identity_number != null) {
      _data.fields.add(MapEntry('identity_number', identity_number));
    }
    _data.files.addAll(identityFile?.map((i) => MapEntry(
        'identity_file[]',
        MultipartFile.fromFileSync(
          i.path,
          filename: i.path.split(Platform.pathSeparator).last,
        ))));
    if (verifyToken != null) {
      _data.fields.add(MapEntry('verify_token', verifyToken));
    }
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/update-document-verifications',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<PolicyResponse> getPolicies() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-rules',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = PolicyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<AcceptPolicyResponse> acceptPolicy(ruleId, versionNumber) async {
    ArgumentError.checkNotNull(ruleId, 'ruleId');
    ArgumentError.checkNotNull(versionNumber, 'versionNumber');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'rule_id': ruleId,
      r'version_number': versionNumber
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/accept-rule',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AcceptPolicyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<AddBankResponse> addBank(addBankRequest) async {
    ArgumentError.checkNotNull(addBankRequest, 'addBankRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(addBankRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/store-bank',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AddBankResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<StripeKeyResponse> getKeyStripe(stripeKeyRequest) async {
    ArgumentError.checkNotNull(stripeKeyRequest, 'stripeKeyRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(stripeKeyRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/deposit/get-stripe-info',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = StripeKeyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BrainTreeKeyResponse> getKeyBrainTree(brainTreeKeyRequest) async {
    ArgumentError.checkNotNull(brainTreeKeyRequest, 'brainTreeKeyRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(brainTreeKeyRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/deposit/get-braintree-info',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BrainTreeKeyResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BrainTreeClientTokenResponse> getClientTokenBrainTree(
      brainTreeKeyRequest) async {
    ArgumentError.checkNotNull(brainTreeKeyRequest, 'brainTreeKeyRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(brainTreeKeyRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/deposit/get-braintree-client-token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BrainTreeClientTokenResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BrainTreePaymentStoreResponse> brainTreePaymentStore(
      brainTreePaymentStoreRequest) async {
    ArgumentError.checkNotNull(
        brainTreePaymentStoreRequest, 'brainTreePaymentStoreRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(brainTreePaymentStoreRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/deposit/braintree-payment-store',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BrainTreePaymentStoreResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<MyVoucherOrderResponse> getMyVoucher({apiToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/voucher_orders',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MyVoucherOrderResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BaseModel> useVoucher(code, {apiToken}) async {
    ArgumentError.checkNotNull(code, 'code');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {'code': code};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/use-voucher',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaseModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<ExchangeMoneyCompleteResponse> exchangeMoney(request) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/exchange-money-complete',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ExchangeMoneyCompleteResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<GetCurrenciesExchangeRateResponse> getCurrenciesExchangeRate() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-current-rate-prices',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetCurrenciesExchangeRateResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<GetCurrencyListHasTransaction> getListCurrencyHasTransaction() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-currency-list-of-active-user-wallets-has-transaction',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetCurrencyListHasTransaction.fromJson(_result.data);
    return value;
  }

  @override
  Future<StoreResponse> searchListStore(
      {searchContent,
      searchFields,
      myLon,
      myLat,
      areaLon,
      areaLat,
      orderBy,
      limit,
      radius}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'search': searchContent,
      r'searchFields': searchFields,
      r'myLon': myLon,
      r'myLat': myLat,
      r'areaLon': areaLon,
      r'areaLat': areaLat,
      r'orderBy': orderBy,
      r'limit': limit,
      r'radius': radius
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/restaurants',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = StoreResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FoodDatasResponse> searchVoucher(
      {categoryID, isTrending, keyword, foodTypeIds, distance}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'category_ids[]': categoryID,
      r'is_trending': isTrending,
      r'keyword': keyword,
      r'food_type_ids[]': foodTypeIds,
      r'distance': distance
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('api/coupon/foods',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FoodDatasResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<OrderResponse> order(request, {apiToken}) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/orders',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = OrderResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UpdateFcmResponse> updateFcmToken(
      {deviceId, platform, fcmToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'device_id': deviceId,
      'platform': platform,
      'fcm_token': fcmToken
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/notification/update-fcm-token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UpdateFcmResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<NotificationResponse> getNotification() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/notification/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = NotificationResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<TransactionDetailResponse> getDetailTransaction(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'tr_id': id};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/transaction-details',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = TransactionDetailResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<ChartGasResponse> getDataChartGas() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-data-gas',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ChartGasResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<SettingResponse> getSettings() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/settings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SettingResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FoodDetailResponse> getFoodDetail(id, query) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(query, 'query');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'with': query};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/foods/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FoodDetailResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BannerResponse> getBanner() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-banners',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BannerResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<TicketResponse> getSupportTicket() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/ticket/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = TicketResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<UpdateTicketResponse> updateTicket(ticketRequest) async {
    ArgumentError.checkNotNull(ticketRequest, 'ticketRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(ticketRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/ticket/send',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UpdateTicketResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<CheckVoucherResponse> checkVoucher(
      sendMoneyMerchantRequest, apiToken) async {
    ArgumentError.checkNotNull(
        sendMoneyMerchantRequest, 'sendMoneyMerchantRequest');
    ArgumentError.checkNotNull(apiToken, 'apiToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    final _data = <String, dynamic>{};
    _data.addAll(sendMoneyMerchantRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/check-voucher',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CheckVoucherResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<SendMoneyMerchantResponse> sendMoneyMerchant(
      sendMoneyMerchantRequest, apiToken) async {
    ArgumentError.checkNotNull(
        sendMoneyMerchantRequest, 'sendMoneyMerchantRequest');
    ArgumentError.checkNotNull(apiToken, 'apiToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    final _data = <String, dynamic>{};
    _data.addAll(sendMoneyMerchantRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/user-apply-voucher',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SendMoneyMerchantResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<HelpResponse> getHelp() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-contact-info',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = HelpResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<ChangePasswordResponse> changePassword(
      {oldPassword, password, confirmPassword}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'password_old': oldPassword,
      'password': password,
      'password_confirmation': confirmPassword
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/update-password',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ChangePasswordResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<ResendEmailresponse> resendEmail() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/resend-email-verify',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ResendEmailresponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<StoreShowAllResponse> getAllStore(apiToken) async {
    ArgumentError.checkNotNull(apiToken, 'apiToken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'api_token': apiToken};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/coupon/restaurants',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = StoreShowAllResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<FoodDatasResponse> getAllVoucher() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('api/coupon/foods',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FoodDatasResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<PendingWalletResponse> getListPendingWallet() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/get-list-pending-wallet',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = PendingWalletResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<BaoKimPaymentResponse> paymentBaoKim(
      {amount, currId, paymentMethodId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'amount': amount,
      'currency_id': currId,
      'payment_method_id': paymentMethodId
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/deposit/baokim-payment-store',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BaoKimPaymentResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<CheckTransactionFeeResponse> getFeeTransaction(
      {currId, amount, totalFee, receiverId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = {
      'currency_id': currId,
      'amount': amount,
      'totalFees': totalFee,
      'receiver_id': receiverId
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/send-money-vipay-check-fees',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CheckTransactionFeeResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<AddBankResponse> updateBank(updateBankRequest) async {
    ArgumentError.checkNotNull(updateBankRequest, 'updateBankRequest');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(updateBankRequest?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/bank-update',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AddBankResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<ListCountryResponse> getListCountry() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/list-countries',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ListCountryResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<DeleteBankResponse> deleteBank(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/delete-bank/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = DeleteBankResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<NofiticationDetailResponse> getNotificationDetail(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'api/payment/notification/detail/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = NofiticationDetailResponse.fromJson(_result.data);
    return value;
  }
}
