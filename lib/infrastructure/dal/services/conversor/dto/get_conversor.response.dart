import 'package:conversor/infrastructure/dal/services/data/results.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_conversor.response.g.dart';

@JsonSerializable()
class GetConversorResponse {
  final ResultsData results;
  const GetConversorResponse({required this.results});

  factory GetConversorResponse.fromJson(Map<String, dynamic> json) =>
      _$GetConversorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetConversorResponseToJson(this);
}
