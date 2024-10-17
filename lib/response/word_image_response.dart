import 'package:json_annotation/json_annotation.dart';

part 'word_image_response.g.dart';

@JsonSerializable()
class WordImageResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final int ordinal;

  WordImageResponse({
    required this.ordinal,
   required this.sku,
   required this.createDate,
   required this.updateDate,
   required this.version,

  });

  factory WordImageResponse.fromJson(Map<String, dynamic> json) =>
      _$WordImageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WordImageResponseToJson(this);
}
