class Setting {
  String appName;
  double defaultTax = 0;
  String defaultCurrency;
  bool currencyRight = false;

  Setting();

  Setting.fromJSON(Map<String, dynamic> jsonMap) {
    appName = jsonMap['app_name'] ?? '';
    defaultTax = double.parse(jsonMap['default_tax']);
    defaultCurrency = jsonMap['default_currency'] ?? '';
    currencyRight = jsonMap['currency_right'] == null ? false : true;
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["app_name"] = appName;
    map["default_tax"] = defaultTax;
    map["default_currency"] = defaultCurrency;
    map["currency_right"] = currencyRight;
    return map;
  }
}
