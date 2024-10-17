import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nukuke/response/translation_sound_response.dart';

import '../../controller/audio_controller.dart';


class AudioWidget extends ConsumerWidget {
  late final AudioPlayer player;
  final TranslationSoundResponse ? sound;

  AudioWidget({super.key, required this.sound}){
    player = AudioPlayer();
  }

 
  @override
  Widget build(context,ref) {
      // var result =   Future.microtask(() =>
      //   {ref.read(audioController.notifier).getSound(sku)});
    if(sound == null){
      return const Icon(Icons.no_accounts);
    }  
      return ElevatedButton.icon(
        onPressed: () async {
          
        var response = await  ref.read(audioController.notifier).getSoundByOrdinal(sound!.ordinal);
        var soundBytes = base64.decode(response.data); 
        //var soundByte = Uint8List.fromList(utf8.encode(response.data));
        var source = BytesSource(soundBytes);
       await player.play(source);
      },
      icon: const Icon(Icons.queue_music),
       label: const Text('player'));
  }
}