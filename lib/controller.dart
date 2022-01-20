import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = 'https://api.hgbrasil.com/finance?key=44379bd9';

class HomeController extends GetxController {
  Future<Map> getData() async {
    try {
      final response = await http.get(Uri.parse(request));
      return json.decode(response.body);
    } catch (error) {
      return throw Exception('Erro ao carregar dados');
    }
  }

  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();

  double dolar = 0;
  double euro = 0;

  void realChanged(String text) {
    realController.addListener(() {});

    if (text.isNotEmpty) {
      final real = double.parse(text);
      dolarController.text = (real / dolar).toStringAsFixed(2);
      euroController.text = (real / euro).toStringAsFixed(2);
    } else {
      realController.text;
      dolarController.text;
      euroController.text;
    }
  }

  void dolarChanged(String text) {
    if (text.isNotEmpty) {
      final dolar = double.parse(text);
      realController.text = (dolar * this.dolar).toStringAsFixed(2);
      euroController.text = (dolar * this.dolar / euro).toStringAsFixed(2);
    } else {
      realController.text;
      dolarController.text;
      euroController.text;
    }
  }

  void euroChanged(String text) {
    if (text.isNotEmpty) {
      double euro = double.parse(text);
      realController.text = (euro * this.euro).toStringAsFixed(2);
      dolarController.text = (euro * this.euro / dolar).toStringAsFixed(2);
    } else {
      realController.text;
      dolarController.text;
      euroController.text;
    }
  }

  Widget buildTextField(
    String label,
    String prefix,
    TextEditingController c,
    Function(String) f,
  ) {
    return TextField(
      controller: c,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.amber),
        border: const OutlineInputBorder(),
        prefixText: prefix,
      ),
      style: const TextStyle(color: Colors.amber, fontSize: 25),
      onChanged: f,
      keyboardType: TextInputType.number,
    );
  }
}
