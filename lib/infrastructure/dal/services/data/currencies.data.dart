import 'package:json_annotation/json_annotation.dart';

import 'usd.data.dart';

part 'currencies.data.g.dart';

@JsonSerializable()
class CurrenciesData {
  @JsonKey(name: 'USD')
  final UsdData usd;
  @JsonKey(name: 'EUR')
  final UsdData eur;

  CurrenciesData({required this.usd, required this.eur});

  factory CurrenciesData.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesDataFromJson(json);

  Map<String, dynamic> toJson() => _$CurrenciesDataToJson(this);
}
