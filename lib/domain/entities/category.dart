import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String? id;
  final String? image;
  final DateTime? createdAt;
  final String? titleTr;
  final String? titleEn;

  Category({
    required this.id,
    required this.image,
    required this.createdAt,
    required this.titleTr,
    required this.titleEn,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, image, createdAt, titleTr, titleEn];
}
