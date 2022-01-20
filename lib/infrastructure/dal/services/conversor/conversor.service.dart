import 'package:conversor/domain/core/abstractions/http_connect.interface.dart';
import 'package:conversor/infrastructure/dal/services/conversor/dto/get_conversor.response.dart';

class ConversorService {
  final IHttpConnect _connect;
  const ConversorService(IHttpConnect connect) : _connect = connect;

  Future<GetConversorResponse> getConversor() async {
    final response = await _connect.get(
      'finance?format=json&key=44379bd9',
      decoder: (value) => GetConversorResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );

    if (response.success) {
      return response.payload!;
    } else {
      switch (response.statusCode) {
        default:
          throw ('Falha ao acessar dados');
      }
    }
  }
}