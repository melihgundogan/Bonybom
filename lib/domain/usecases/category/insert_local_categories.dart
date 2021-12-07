import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/core/usecases/usecase.dart';
import 'package:bonybom_app/domain/entities/category.dart';
import 'package:bonybom_app/domain/params/category_params.dart';
import 'package:bonybom_app/domain/repositories/category_repository.dart';
import 'package:dartz/dartz.dart';

class InsertLocalCategories implements UseCase<Category, CategoryParams> {
  final CategoryRepository _categoryRepository;

  InsertLocalCategories(this._categoryRepository);

  @override
  Future<Either<Failure, Category>> call(CategoryParams params) async {
    return await _categoryRepository.insertLocalCategory(params.category);
  }
}
