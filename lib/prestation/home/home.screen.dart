import 'package:conversor/prestation/home/controllers/home.controller.dart';
import 'package:conversor/prestation/home/widgets/erro.widget.dart';
import 'package:conversor/prestation/home/widgets/form.widget.dart';
import 'package:conversor/prestation/home/widgets/load.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('\$ Conversor \$'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Obx(
        () {
          if (controller.load.value) {
            return LoadWidget();
          } else if (controller.statusError.value) {
            return ErroWidget();
          } else {
            return FormWidget();
          }
        },
      ),
    );
  }
}
