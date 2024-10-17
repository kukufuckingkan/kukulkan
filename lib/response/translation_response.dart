import 'package:json_annotation/json_annotation.dart';
import 'package:nukuke/response/base_response.dart';
import 'package:nukuke/response/image_response.dart';
import 'package:nukuke/response/word_image_response.dart';

import 'definition_response.dart';
import 'language_response.dart';
import 'translation_sound_response.dart';

part 'translation_response.g.dart';

@JsonSerializable(includeIfNull: false, ignoreUnannotated: false,nullable: true)
class TranslationResponse {

  @JsonKey(includeIfNull: true,defaultValue: null,required: false)
  final BaseResponse ? root;

    @JsonKey(includeIfNull: true,defaultValue: null,required: false)
  final TranslationSoundResponse ? sound;
  final List<WordImageResponse> image;
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final String text;
  final LanguageResponse language;
  final List<DefinitionResponse> definitions;

    @JsonKey(includeIfNull: true,defaultValue: null,required: false)
  final BaseResponse ? word;


  TranslationResponse({
    required this.image,
    required this.definitions,
   required this.root,
   required this.sku,
    required this.createDate,
   required this.updateDate,
   required this.version,
   required this.text,
   required this.language,
   required this.sound,
   required this.word
  });

  factory TranslationResponse.fromJson(Map<String, dynamic> json) => _$TranslationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationResponseToJson(this);
}