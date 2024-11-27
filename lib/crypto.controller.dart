import 'package:get/get.dart';
import 'package:tugas_pratikum_ut/crypto.model.dart';
import 'package:tugas_pratikum_ut/crypto.service.dart';

class CryptoController extends GetxController {
  /// Call Service
  final CryptoService cryptoService = Get.put(CryptoService());

  /// Data from service
  RxList<CryptoModel> data = RxList([]);

  /// Lifecycle
  @override
  void onInit() {
    // getDataCrypto();
    super.onInit();
  }

  /// Get data from service
  Future<void> getDataCrypto() async {
    try {
      final response = await cryptoService.getCrypto();
      data.assignAll(response.data);
    } catch (e) {
      print('Error: $e');
    }
  }
}
