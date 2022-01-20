// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_conversor.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetConversorResponse _$GetConversorResponseFromJson(
        Map<String, dynamic> json) =>
    GetConversorResponse(
      results: ResultsData.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetConversorResponseToJson(
        GetConversorResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
