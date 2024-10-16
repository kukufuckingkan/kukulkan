// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
    };
