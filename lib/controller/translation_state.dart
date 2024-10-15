
import 'package:freezed_annotation/freezed_annotation.dart';

import '../response/translation_response.dart';

part 'translation_state.freezed.dart';

@freezed
abstract class TranslationState with _$TranslationState{
    factory TranslationState({
    required final bool fetching,
    required final List<TranslationResponse> translations,
    required final String error,
  }) = _TranslationState;

  factory  TranslationState.initial(){
    return TranslationState(fetching: false, error: '',translations: []);
  }
}