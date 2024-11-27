import 'dart:convert';

import 'crypto.model.dart';

class ResponseModel {
  List<CryptoModel> data;

  ResponseModel({
    required this.data,
  });

  factory ResponseModel.fromRawJson(String str) =>
      ResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        data: List<CryptoModel>.from(
            json["data"].map((x) => CryptoModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
