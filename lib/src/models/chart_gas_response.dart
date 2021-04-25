// To parse this JSON data, do
//
//     final chartGasResponse = chartGasResponseFromJson(jsonString);

import 'dart:convert';

class ChartGasResponse {
  ChartGasResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<ChartColumn> data;

  factory ChartGasResponse.fromRawJson(String str) =>
      ChartGasResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChartGasResponse.fromJson(Map<String, dynamic> json) =>
      ChartGasResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<ChartColumn>.from(
                json["data"].map((x) => ChartColumn.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ChartColumn {
  ChartColumn({this.date, this.rate, this.formatDate, this.colorColumn});

  DateTime date;
  double rate;
  String formatDate;
  int colorColumn;

  factory ChartColumn.fromRawJson(String str) =>
      ChartColumn.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChartColumn.fromJson(Map<String, dynamic> json) => ChartColumn(
      date: json["date"] == null ? null : DateTime.parse(json["date"]),
      rate: json["rate"] == null ? null : json["rate"].toDouble(),
      formatDate: json["formatDate"] == null ? null : json["formatDate"],
      colorColumn: json["colorColumn"] == null ? null : json["colorColumn"]);

  Map<String, dynamic> toJson() => {
        "date": date == null
            ? null
            : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "rate": rate == null ? null : rate,
        "formatDate": formatDate == null ? null : formatDate,
        "colorColumn": colorColumn == null ? null : colorColumn,
      };
}
