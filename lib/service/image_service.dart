import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukuke/response/image_response.dart';

import '../repository/audio_api.dart';
import '../repository/image_api.dart';
import '../response/sound_response.dart';

class ImageService {
  final Ref ref;

  ImageService(this.ref);

    Future<ImageResponse> fetchByOrdinal(int ordinal) async {
    try {
      var response = await ref.read(imageApi).findByOrdinal(ordinal);
      return response;
    } on DioException catch (e) {
          log(e.toString());
      throw Exception(e);
    } on SocketException catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

}

final imageService =
    Provider<ImageService>((ref) => ImageService(ref));
