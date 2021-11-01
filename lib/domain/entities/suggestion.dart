import 'package:equatable/equatable.dart';

class Suggestion extends Equatable {
  final String id;
  final String image;
  final String title;
  final String description;
  final String startAt;
  final String endAt;
  final String likeCount;
  final String dislikeCount;
  final String tickCount;
  final String saveCount;
  final String createdAt;

  Suggestion({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.startAt,
    required this.endAt,
    required this.likeCount,
    required this.dislikeCount,
    required this.tickCount,
    required this.saveCount,
    required this.createdAt,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
