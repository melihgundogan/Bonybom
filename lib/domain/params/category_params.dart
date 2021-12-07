import 'package:bonybom_app/domain/entities/category.dart';
import 'package:equatable/equatable.dart';

class CategoryParams extends Equatable {
  final Category category;

  CategoryParams({required this.category});

  @override
  List<Object?> get props => [this.category];
}
