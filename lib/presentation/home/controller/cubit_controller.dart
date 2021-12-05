import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/core/usecases/usecase.dart';
import 'package:bonybom_app/domain/entities/suggestion.dart';
import 'package:bonybom_app/domain/usecases/suggestion/get_all_remote_suggestions.dart';
import 'package:bonybom_app/presentation/home/controller/state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.getAllRemoteSuggestions) : super(Initial());

  final GetAllRemoteSuggestions getAllRemoteSuggestions;

  Future<void> getSuggestions() async {
    emit(const Loading());
    Either<Failure, List<Suggestion>> failureOrSuggestions;
    //Future: Check if there are new suggestions and load either local or remote suggestions.
    //
    //

    failureOrSuggestions = await getAllRemoteSuggestions(NoParams());

    emit(failureOrSuggestions.fold((failure) => SuggestionsNotLoaded(failure), (suggestions) => SuggestionsLoaded(suggestions)));
  }
}
