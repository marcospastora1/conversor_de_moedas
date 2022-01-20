import 'package:conversor/prestation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Icon(
            Icons.monetization_on,
            size: 150,
            color: Colors.amber,
          ),
          controller.buildFormField(
            label: 'Real',
            prefix: 'R\$ ',
            controller: controller.realController,
            function: controller.realChanged,
          ),
          const Divider(),
          controller.buildFormField(
            label: 'Dolar',
            prefix: 'US\$ ',
            controller: controller.dolarController,
            function: controller.dolarChanged,
          ),
          const Divider(),
          controller.buildFormField(
            label: 'Euro',
            prefix: '€ ',
            controller: controller.euroController,
            function: controller.euroChanged,
          ),
        ],
      ),
    );
  }
}
