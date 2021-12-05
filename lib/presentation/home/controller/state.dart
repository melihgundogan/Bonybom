import 'package:bonybom_app/core/error/failures.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/suggestion.dart';

part 'state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.suggesstionsLoaded(List<Suggestion> suggestions) = SuggestionsLoaded;
  const factory HomeState.suggestionsNotLoaded(Failure failure) = SuggestionsNotLoaded;
}
