// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrenciesData _$CurrenciesDataFromJson(Map<String, dynamic> json) =>
    CurrenciesData(
      usd: UsdData.fromJson(json['USD'] as Map<String, dynamic>),
      eur: UsdData.fromJson(json['EUR'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrenciesDataToJson(CurrenciesData instance) =>
    <String, dynamic>{
      'USD': instance.usd,
      'EUR': instance.eur,
    };
