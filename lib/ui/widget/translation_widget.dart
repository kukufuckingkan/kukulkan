// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nukuke/ui/widget/image_widget.dart';

import '../../response/translation_response.dart';
import 'audio_widget.dart';
import 'definition_wiget.dart';

class TranslationWidget extends ConsumerWidget {
  final TranslationResponse translation;

  TranslationWidget({super.key, required this.translation});

  @override
  Widget build(context, ref) {
    var sound = translation.sound;
    var images = translation.image;

    return Consumer(builder: (ctx, ref, widget) {
      return Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                           Flexible(
                          flex: 1,
                          child: ImageWidget(images),
                        ),
                        
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              AudioWidget(sound: sound),
                            ],
                          ),
                        ),
                        // ImageWidget(translation.word),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              DefinitionWiget(
                                sku: '',
                                definitions: translation.definitions,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Text(translation.text,style: GoogleFonts.notoSansNKo(),),
                              //Text('ߞߊ ߞߏ ߘߏ ߝߐ')
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
