import 'package:json_annotation/json_annotation.dart';


part 'base_response.g.dart';

@JsonSerializable(includeIfNull: true, ignoreUnannotated: false)
class BaseResponse {
  final String sku;
  final DateTime createDate;
  final DateTime updateDate;
  final int version;


  BaseResponse({
   required this.sku,
    required this.createDate,
   required this.updateDate,
   required this.version,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}