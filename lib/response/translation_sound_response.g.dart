// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_sound_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslationSoundResponse _$TranslationSoundResponseFromJson(
        Map<String, dynamic> json) =>
    TranslationSoundResponse(
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
      ordinal: (json['ordinal'] as num).toInt(),
    );

Map<String, dynamic> _$TranslationSoundResponseToJson(
        TranslationSoundResponse instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'ordinal': instance.ordinal,
    };
