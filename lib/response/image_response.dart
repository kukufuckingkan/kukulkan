import 'package:json_annotation/json_annotation.dart';

part 'image_response.g.dart';

@JsonSerializable()
class ImageResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;
  final String data;
  final int fileId;

  ImageResponse({
   required this.sku,
   required this.createDate,
   required this.updateDate,
   required this.version,
   required this.data,
   required this.fileId
  });

  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ImageResponseToJson(this);
}
