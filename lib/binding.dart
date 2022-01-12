import 'package:conversor/controller.dart';
import 'package:get/get.dart';

class Binging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
