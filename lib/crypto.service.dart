import 'dart:convert';

import 'package:get/get.dart';
import 'package:tugas_pratikum_ut/response.model.dart';
import 'package:http/http.dart' as http;

class CryptoService extends GetxService {
  final String url = 'https://api.coinlore.net/api/tickers';

  /// Get data from REST API
  Future<ResponseModel> getCrypto() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
    });
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      return ResponseModel.fromJson(responseBody);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
