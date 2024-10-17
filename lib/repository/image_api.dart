import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukuke/response/image_response.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';
import '../response/sound_response.dart';



part 'image_api.g.dart';

class EndPoint {
      static const findByOrdinal = "/image/ordinal/{ordinal}";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class ImageApi {

  factory ImageApi(Dio dio, {String baseUrl}) =
      _ImageApi;



    @GET(EndPoint.findByOrdinal)
  Future<ImageResponse> findByOrdinal(@Path("ordinal") int ordinal);
}


final imageApi = Provider<ImageApi>((ref) {
  var url = appProperties['WARA_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return ImageApi(Dio(), baseUrl: url);
});
