// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslationResponse _$TranslationResponseFromJson(Map<String, dynamic> json) =>
    TranslationResponse(
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => DefinitionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      root: json['root'] == null
          ? null
          : BaseResponse.fromJson(json['root'] as Map<String, dynamic>),
      sku: json['sku'] as String,
      createDate: DateTime.parse(json['createDate'] as String),
      updateDate: DateTime.parse(json['updateDate'] as String),
      version: (json['version'] as num).toInt(),
      text: json['text'] as String,
      language:
          LanguageResponse.fromJson(json['language'] as Map<String, dynamic>),
      sound: json['sound'] == null
          ? null
          : TranslationSoundResponse.fromJson(
              json['sound'] as Map<String, dynamic>),
      word: json['word'] as String,
    );

Map<String, dynamic> _$TranslationResponseToJson(
        TranslationResponse instance) =>
    <String, dynamic>{
      'root': instance.root,
      'sound': instance.sound,
      'sku': instance.sku,
      'createDate': instance.createDate.toIso8601String(),
      'updateDate': instance.updateDate.toIso8601String(),
      'version': instance.version,
      'text': instance.text,
      'language': instance.language,
      'definitions': instance.definitions,
      'word': instance.word,
    };
