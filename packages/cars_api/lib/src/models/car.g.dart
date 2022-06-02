// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      id: json['id'] as String? ?? '',
      brand: json['brand'] as String? ?? '',
      model: json['model'] as String? ?? '',
      color: json['color'] as String? ?? '',
      year: json['year'] as String? ?? '',
      ownerId: json['ownerId'] as String? ?? '',
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'model': instance.model,
      'color': instance.color,
      'year': instance.year,
      'ownerId': instance.ownerId,
    };
