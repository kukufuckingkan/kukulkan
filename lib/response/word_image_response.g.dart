// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordImageResponse _$WordImageResponseFromJson(Map<String, dynamic> json) =>
    WordImageResponse(
      ordinal: (json['ordinal'] as num).toInt(),
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
    );

Map<String, dynamic> _$WordImageResponseToJson(WordImageResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'ordinal': instance.ordinal,
    };
