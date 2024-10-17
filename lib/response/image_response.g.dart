// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) =>
    ImageResponse(
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
      data: json['data'] as String,
      fileId: (json['fileId'] as num).toInt(),
    );

Map<String, dynamic> _$ImageResponseToJson(ImageResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'data': instance.data,
      'fileId': instance.fileId,
    };
