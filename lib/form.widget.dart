import 'package:conversor/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormWidget extends GetView<HomeController> {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.monetization_on,
            size: 150,
            color: Colors.amber,
          ),
          controller.buildTextField(
            'Real',
            'R\$ ',
            controller.realController,
            controller.realChanged,
          ),
          const Divider(),
          controller.buildTextField(
            'Dolar',
            'US\$ ',
            controller.dolarController,
            controller.dolarChanged,
          ),
          const Divider(),
          controller.buildTextField(
            'Euro',
            '€ ',
            controller.euroController,
            controller.euroChanged,
          ),
        ],
      ),
    );
  }
}
