import 'package:conversor/infrastructure/navigation/bindings/domains/conversor.repository.binding.dart';
import 'package:conversor/prestation/home/controllers/home.controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final conversorRepositoryBinding = ConversorRepositoryBinding();

    Get.lazyPut<HomeController>(
      () => HomeController(conversorRepository: conversorRepositoryBinding.repository),
    );
  }
}
