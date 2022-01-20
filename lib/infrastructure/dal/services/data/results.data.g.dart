// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsData _$ResultsDataFromJson(Map<String, dynamic> json) => ResultsData(
      currencies:
          CurrenciesData.fromJson(json['currencies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultsDataToJson(ResultsData instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
    };
