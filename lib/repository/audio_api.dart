import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../main.dart';
import '../response/sound_response.dart';



part 'audio_api.g.dart';

class EndPoint {
       static const findBySku = "/sound/sku/{sku}";
      static const findByOrdinal = "/sound/ordinal/{ordinal}";
}

@RestApi(baseUrl: 'http://192.168.0.95:8050')
abstract class AudioApi {

  factory AudioApi(Dio dio, {String baseUrl}) =
      _AudioApi;


  @GET(EndPoint.findBySku)
  Future<SoundResponse> findBySku(@Path("sku") String sku);

    @GET(EndPoint.findByOrdinal)
  Future<SoundResponse> findByOrdinal(@Path("ordinal") int ordinal);
}


final audioApi = Provider<AudioApi>((ref) {
  var url = appProperties['WARA_BASE_URL'];
  
  //final dio = ref.watch(localStorageController).dioClient;
  return AudioApi(Dio(), baseUrl: url);
});
