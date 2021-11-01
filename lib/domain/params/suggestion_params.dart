import 'package:equatable/equatable.dart';

class SuggestionParams extends Equatable {
  final String id;

  SuggestionParams({required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [this.id];
}
