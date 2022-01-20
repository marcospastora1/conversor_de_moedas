import 'package:conversor/infrastructure/dal/services/data/results.data.dart';

class ConversorModel {
  final double buy;
  final String name;
  const ConversorModel({required this.buy, required this.name});

  factory ConversorModel.fromData(ResultsData data) {
    return ConversorModel(
        buy: data.currencies.usd.buy, name: data.currencies.usd.name);
  }
}
