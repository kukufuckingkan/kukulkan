

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../response/sound_response.dart';
import '../service/audio_service.dart';
import 'audio_state.dart';



class AudioController extends StateNotifier<AudioState> {
  final Ref ref;

   AudioController(this.ref) : super(AudioState.initial());

 Future<SoundResponse>  getSoundBySku(String sku) async{
  var response = ref.read(audioService).fetchBySku(sku);
  return response;
 }


 Future<SoundResponse>  getSoundByOrdinal(int ordinal) async{
  var response = ref.read(audioService).fetchByOrdinal(ordinal);
  return response;
 }
}

final audioController = StateNotifierProvider<AudioController, AudioState>((ref) {
  return AudioController(ref);
});