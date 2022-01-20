import 'package:conversor/domain/repositories/conversor.repository.dart';
import 'package:conversor/infrastructure/dal/services/conversor/dto/get_conversor.response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late final ConversorRepository _conversorRepository;
  HomeController({required ConversorRepository conversorRepository})
      : _conversorRepository = conversorRepository;

  final conversor = Rxn<GetConversorResponse>();
  final load = true.obs;
  final statusError = false.obs;
  double dolar = 0;
  double euro = 0;

  @override
  void onReady() {
    loadConversor();
  }

  Future<void> loadConversor() async {
    try {
      final response = await _conversorRepository.getConversor();
      conversor.value = response;
      dolar = conversor.value!.results.currencies.usd.buy;
      euro = conversor.value!.results.currencies.eur.buy;
    } catch (err) {
      statusError.value = true;
    } finally {
      load.value = false;
    }
  }

  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();

  void clearAll(){
    realController.text = '';
    dolarController.text = '';
    euroController.text = '';
  }

  void realChanged(String text) {
    realController.addListener(() {});

    if (text.isNotEmpty) {
      final real = double.parse(text);
      dolarController.text = (real / dolar).toStringAsFixed(2);
      euroController.text = (real / euro).toStringAsFixed(2);
    } else {
      clearAll();
    }
  }

  void dolarChanged(String text) {
    if (text.isNotEmpty) {
      final dolar = double.parse(text);
      realController.text = (dolar * this.dolar).toStringAsFixed(2);
      euroController.text = (dolar * this.dolar / euro).toStringAsFixed(2);
    } else {
      clearAll();
    }
  }

  void euroChanged(String text) {
    if (text.isNotEmpty) {
      double euro = double.parse(text);
      realController.text = (euro * this.euro).toStringAsFixed(2);
      dolarController.text = (euro * this.euro / dolar).toStringAsFixed(2);
    } else {
      clearAll();
    }
  }

  Widget buildFormField(
      {required String label,
      required String prefix,
      required TextEditingController controller,
      required Function(String) function}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.amber),
        border: const OutlineInputBorder(),
        prefixText: prefix,
      ),
      style: const TextStyle(color: Colors.amber, fontSize: 25),
      onChanged: function,
      keyboardType: TextInputType.number,
    );
  }
}
