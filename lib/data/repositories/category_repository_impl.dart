import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/category.dart';
import '../../domain/repositories/category_repository.dart';
import '../datasources/local/hive/category/category_local_datasource.dart';
import '../datasources/remote/category/category_remote_datasource.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryLocalDataSourceImpl categoryLocalDataSource;
  final CategoryRemoteDataSource categoryRemoteDataSource;

  CategoryRepositoryImpl({
    required this.categoryLocalDataSource,
    required this.categoryRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<Category>>> getLocalCategories() async {
    final categories = await categoryLocalDataSource.getItems();
    if (categories.isNotEmpty) {
      return Right(categories);
    }

    return Left(Failure("Her hangi bir kategori bulunamadı."));
  }

  @override
  Future<Either<Failure, List<Category>>> getRemoteCategories() async {
    try {
      final response = await categoryRemoteDataSource.getAllRemoteCategories();
      return response.fold((failure) => Left(failure), (categories) async {
        if (categories.isNotEmpty) {
          await categoryLocalDataSource.addItems(categories);
          return Right(categories);
        }

        return const Left(Failure("Kategori bulunamadı."));
      });
    } on Exception catch (e) {
      return Left(Failure("Something went wrong"));
    }
  }

  @override
  Future<Either<Failure, Category>> insertLocalCategory(Category category) {
    // TODO: implement insertLocalCategory
    throw UnimplementedError();
  }
}
