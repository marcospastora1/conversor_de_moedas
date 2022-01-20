import 'package:conversor/infrastructure/dal/services/conversor/conversor.service.dart';
import 'package:conversor/infrastructure/dal/services/conversor/dto/get_conversor.response.dart';

class ConversorRepository {
  final ConversorService _service;
  const ConversorRepository({required ConversorService service})
      : _service = service;

  Future<GetConversorResponse> getConversor() async {
    try {
      final response = await _service.getConversor();
      final models = response;
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
