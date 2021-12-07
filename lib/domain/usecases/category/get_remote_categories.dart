import 'package:bonybom_app/core/error/failures.dart';
import 'package:bonybom_app/core/usecases/usecase.dart';
import 'package:bonybom_app/domain/entities/category.dart';
import 'package:bonybom_app/domain/repositories/category_repository.dart';
import 'package:dartz/dartz.dart';

class GetRemoteCategories implements UseCase<List<Category>, NoParams> {
  final CategoryRepository _categoryRepository;

  GetRemoteCategories(this._categoryRepository);
  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return await _categoryRepository.getRemoteCategories();
  }
}
