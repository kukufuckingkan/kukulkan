import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/translation_controller.dart';
import '../widget/translation_widget.dart';

class TranslationScreen extends ConsumerWidget {
  const TranslationScreen({super.key});

  @override
  Widget build(context, ref) {
    var nko = "ߒߞߏ";
    Future.microtask(() =>
        {ref.read(translationController.notifier).fetchAllByLanguage(nko)});

    return Column(
      children: [
        Flexible(child: Consumer(builder: (_, ref, __) {
          var state = ref.watch(translationController.select((value) => value));

          if (state.fetching) {
            return const CircularProgressIndicator();
          }
          if (state.error.isNotEmpty) {
            return Text(state.error);
          }
          var translations = state.translations;
          return ListView.builder(
            itemCount: translations.length,
            itemBuilder: (context, index) {
              var translation = translations[index];
              return TranslationWidget(translation: translation);
            },
          );
        }))
      ],
    );
  }
}
