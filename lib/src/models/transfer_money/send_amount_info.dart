import 'package:vipay/src/models/base_model.dart';

class SendAmountInfoResponse extends BaseResponse {
  bool success;
  String message;
  SendAmountInfo data;

  SendAmountInfoResponse({
    this.success,
    this.message,
    this.data,
  });

  factory SendAmountInfoResponse.fromJson(Map<String, dynamic> json) =>
      SendAmountInfoResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data:
            json["data"] == null ? null : SendAmountInfo.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };

  @override
  bool hasData() {
    return data != null;
  }
}

class SendAmountInfo {
  String sendAmount;
  int sendCurrency;
  int totalFees;
  String sendAmountDisplay;
  String totalFeesDisplay;
  String totalAmountDisplay;
  String currCode;
  String currSymbol;

  SendAmountInfo({
    this.sendAmount,
    this.sendCurrency,
    this.totalFees,
    this.sendAmountDisplay,
    this.totalFeesDisplay,
    this.totalAmountDisplay,
    this.currCode,
    this.currSymbol,
  });

  factory SendAmountInfo.fromJson(Map<String, dynamic> json) => SendAmountInfo(
        sendAmount: json["sendAmount"] == null ? null : json["sendAmount"],
        sendCurrency:
            json["sendCurrency"] == null ? null : json["sendCurrency"],
        totalFees: json["totalFees"] == null ? null : json["totalFees"],
        sendAmountDisplay: json["sendAmountDisplay"] == null
            ? null
            : json["sendAmountDisplay"],
        totalFeesDisplay:
            json["totalFeesDisplay"] == null ? null : json["totalFeesDisplay"],
        totalAmountDisplay: json["totalAmountDisplay"] == null
            ? null
            : json["totalAmountDisplay"],
        currCode: json["currCode"] == null ? null : json["currCode"],
        currSymbol: json["currSymbol"] == null ? null : json["currSymbol"],
      );

  Map<String, dynamic> toJson() => {
        "sendAmount": sendAmount == null ? null : sendAmount,
        "sendCurrency": sendCurrency == null ? null : sendCurrency,
        "totalFees": totalFees == null ? null : totalFees,
        "sendAmountDisplay":
            sendAmountDisplay == null ? null : sendAmountDisplay,
        "totalFeesDisplay": totalFeesDisplay == null ? null : totalFeesDisplay,
        "totalAmountDisplay":
            totalAmountDisplay == null ? null : totalAmountDisplay,
        "currCode": currCode == null ? null : currCode,
        "currSymbol": currSymbol == null ? null : currSymbol,
      };
}
