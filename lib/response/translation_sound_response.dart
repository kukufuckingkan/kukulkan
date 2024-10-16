import 'package:json_annotation/json_annotation.dart';

part 'translation_sound_response.g.dart';

@JsonSerializable(includeIfNull: true, ignoreUnannotated: false)
class TranslationSoundResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final int ordinal;



  TranslationSoundResponse({
   required this.sku,
    required this.createDate,
   required this.updateDate,
   required this.version,
   required this.ordinal
  });

  factory TranslationSoundResponse.fromJson(Map<String, dynamic> json) => _$TranslationSoundResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationSoundResponseToJson(this);
}