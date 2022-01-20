import 'package:conversor/domain/repositories/conversor.repository.dart';
import 'package:conversor/infrastructure/dal/connect.dart';
import 'package:conversor/infrastructure/dal/services/conversor/conversor.service.dart';
import 'package:get/get.dart';

class ConversorRepositoryBinding {
  late ConversorRepository _conversorRepository;
  ConversorRepository get repository => _conversorRepository;

  ConversorRepositoryBinding() {
    final getConnect = Get.find<GetConnect>();
    final connect = Connect(connect: getConnect);
    final conversorService = ConversorService(connect);
    _conversorRepository = ConversorRepository(service: conversorService);
  }
}
