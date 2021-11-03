import 'package:equatable/equatable.dart';

class Suggestion extends Equatable {
  final String? id;
  final String? image;
  final String? title;
  final String? description;
  final String? startAt;
  final String? endAt;
  final String? likeCount;
  final String? dislikeCount;
  final String? tickCount;
  final String? saveCount;
  final String? createdAt;

  Suggestion({
    this.id,
    this.image,
    this.title,
    this.description,
    this.startAt,
    this.endAt,
    this.likeCount,
    this.dislikeCount,
    this.tickCount,
    this.saveCount,
    this.createdAt,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
