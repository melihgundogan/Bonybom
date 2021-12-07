import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/domain/entities/category.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<Category>>> getRemoteCategories();
  Future<Either<Failure, List<Category>>> getLocalCategories();
  Future<Either<Failure, Category>> insertLocalCategory(Category category);
}
