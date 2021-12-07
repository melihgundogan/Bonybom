import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failures.dart';
import '../../../models/category_model.dart';
import 'category_remote_api_service.dart';

class CategoryRemoteDataSource {
  final CategoryRemoteApiService categoryRemoteApiService;

  CategoryRemoteDataSource({required this.categoryRemoteApiService});

  Future<Either<Failure, List<CategoryModel>>> getAllRemoteCategories() async {
    try {
      final categories = await categoryRemoteApiService.getAllRemoteCategories();
      return Right(categories);
    } on DioError catch (e) {
      print(e.type);
      print(e.message);
      return Left(Failure(e.message));
    } on Exception catch (_) {
      return const Left(Failure("Some error occured."));
    }
  }
}
