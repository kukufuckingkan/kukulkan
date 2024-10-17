
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukuke/response/image_response.dart';
import 'package:nukuke/service/image_service.dart';

import '../main.dart';
import 'image_state.dart';


class ImageController extends StateNotifier<ImageState> {
  final Ref ref;

 ImageController(this.ref) : super(ImageState.initial());

   
 Future<ImageResponse>  getByOrdinal(int ordinal) async{
  var response =  await ref.read(imageService).fetchByOrdinal(ordinal);
  return response;
 }

 String  getUrl(String sku){
   var base = appProperties['WARA_BASE_URL'];
   var path = "/image/$sku";
  var url = base + path;
  return url;
 }
}


final imageController = StateNotifierProvider<ImageController, ImageState>((ref) {
  return ImageController(ref);
});