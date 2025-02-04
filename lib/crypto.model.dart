import 'dart:convert';

class CryptoModel {
  String id;
  String symbol;
  String name;
  String nameid;
  int rank;
  String priceUsd;
  String percentChange24H;
  String percentChange1H;
  String percentChange7D;
  String priceBtc;
  String marketCapUsd;
  double volume24;
  double volume24A;
  String csupply;
  String tsupply;
  String? msupply;

  CryptoModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.nameid,
    required this.rank,
    required this.priceUsd,
    required this.percentChange24H,
    required this.percentChange1H,
    required this.percentChange7D,
    required this.priceBtc,
    required this.marketCapUsd,
    required this.volume24,
    required this.volume24A,
    required this.csupply,
    required this.tsupply,
    required this.msupply,
  });

  factory CryptoModel.fromRawJson(String str) =>
      CryptoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CryptoModel.fromJson(Map<String, dynamic> json) => CryptoModel(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        nameid: json["nameid"],
        rank: json["rank"],
        priceUsd: json["price_usd"],
        percentChange24H: json["percent_change_24h"],
        percentChange1H: json["percent_change_1h"],
        percentChange7D: json["percent_change_7d"],
        priceBtc: json["price_btc"],
        marketCapUsd: json["market_cap_usd"],
        volume24: json["volume24"]?.toDouble(),
        volume24A: json["volume24a"]?.toDouble(),
        csupply: json["csupply"],
        tsupply: json["tsupply"],
        msupply: json["msupply"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "nameid": nameid,
        "rank": rank,
        "price_usd": priceUsd,
        "percent_change_24h": percentChange24H,
        "percent_change_1h": percentChange1H,
        "percent_change_7d": percentChange7D,
        "price_btc": priceBtc,
        "market_cap_usd": marketCapUsd,
        "volume24": volume24,
        "volume24a": volume24A,
        "csupply": csupply,
        "tsupply": tsupply,
        "msupply": msupply,
      };
}
