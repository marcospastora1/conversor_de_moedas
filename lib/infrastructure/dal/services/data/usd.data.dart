import 'package:json_annotation/json_annotation.dart';

part 'usd.data.g.dart';

@JsonSerializable()
class UsdData {
  final double buy;
  final String name;

  UsdData({required this.buy, required this.name});

  factory UsdData.fromJson(Map<String, dynamic> json) =>
      _$UsdDataFromJson(json);

  Map<String, dynamic> toJson() => _$UsdDataToJson(this);
}
