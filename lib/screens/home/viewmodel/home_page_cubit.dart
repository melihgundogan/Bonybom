// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../core/usecases/usecase.dart';
// import '../../../domain/entities/suggestion.dart';
// import '../../../domain/usecases/suggestion/get_all_remote_suggestions.dart';
// import '../../../injection_container.dart';

// class HomePageCubit extends Cubit<HomePageState> {
//   final _getAllSuggestions = sl<GetAllSuggestions>();

//   HomePageCubit() : super(HomePageInitial());

//   bool isLoading = false;
//   int swipeValue = 0;
//   void fetchSuggestions() async {
//     changeLoadingView();
//     final data = await _getAllSuggestions(NoParams());
//     changeLoadingView();
//     if (data.isNotEmpty) {
//       emit(SuggestionsLoadedState(data));
//     }
//   }

//   void swipedUp() {
//     emit(SuggestionSwipedUpState(swipedValue: swipeValue + 1));
    
//   }

//   void changeLoadingView() {
//     isLoading = !isLoading;
//     emit(SuggestionsLoadingState(isLoading));
//   }
// }

// abstract class HomePageState {}

// class HomePageInitial extends HomePageState {}

// class SuggestionsLoadingState extends HomePageState {
//   final bool isLoading;

//   SuggestionsLoadingState(this.isLoading);
// }

// class SuggestionsLoadedState extends HomePageState {
//   final List<Suggestion> suggestions;

//   SuggestionsLoadedState(this.suggestions);
// }

// class SuggestionSwipedUpState extends HomePageState {
//   final int swipedValue;

//   SuggestionSwipedUpState({required this.swipedValue});
// }
