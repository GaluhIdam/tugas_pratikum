import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'crypto.controller.dart';

class CryptoScreen extends StatelessWidget {
  CryptoScreen({super.key});

  final CryptoController cryptoController = Get.put(CryptoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: IntrinsicWidth(
                child: ElevatedButton(
                  onPressed: () => cryptoController.getDataCrypto(),
                  child: const Text('Get Data'),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Obx(() {
              if (cryptoController.data.isNotEmpty) {
                return Column(
                  children: cryptoController.data.map((item) {
                    return Table(
                      border: TableBorder.all(), // Adds borders to the table
                      columnWidths: const {
                        0: FixedColumnWidth(120), // Column 1 width
                        1: FixedColumnWidth(120), // Column 2 width
                        2: FixedColumnWidth(120), // Column 3 width
                      },
                      children: [
                        const TableRow(
                          children: [
                            TableCell(
                                child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Name'))),
                            TableCell(
                                child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Symbol'))),
                            TableCell(
                                child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Harga USD'))),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(item.name))),
                            TableCell(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(item.symbol))),
                            TableCell(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(item.priceUsd))),
                          ],
                        ),
                      ],
                    );
                  }).toList(), // Convert the map into a list
                );
              } else {
                return const Center(
                  child: Text('Data is Empty'),
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
