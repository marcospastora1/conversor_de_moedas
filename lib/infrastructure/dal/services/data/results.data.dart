import 'package:json_annotation/json_annotation.dart';

import 'currencies.data.dart';

part 'results.data.g.dart';

@JsonSerializable()
class ResultsData {
  final CurrenciesData currencies;

  ResultsData({required this.currencies});

  factory ResultsData.fromJson(Map<String, dynamic> json) =>
      _$ResultsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsDataToJson(this);
}
