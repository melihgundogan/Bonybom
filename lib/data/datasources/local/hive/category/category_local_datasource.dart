import 'package:bonybom_app/data/datasources/local/ILocalDataSourceManager.dart';
import 'package:bonybom_app/data/datasources/local/hive/category/category.dart';
import 'package:bonybom_app/data/models/category_model.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class CategoryLocalDataSourceImpl implements ILocalDataSourceManager<CategoryModel> {
  final _kCategoryBoxName = 'categoryBox';

  @override
  Future<bool> initDb() async {
    try {
      if (!foundation.kIsWeb) {
        final appDocumentDir = await getApplicationDocumentsDirectory();
        Hive.init(appDocumentDir.path);
      }

      Hive.registerAdapter(CategoryAdapter());
      await Hive.openBox<Category>(_kCategoryBoxName);
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> addItems(List<CategoryModel> items) async {
    try {
      final categoryBox = Hive.box<Category>(_kCategoryBoxName);
      final converted = items.map(
        (e) => Category(
          id: e.id,
          image: e.image,
          createdAt: e.createdAt,
          titleEn: e.titleEn,
          titleTr: e.titleTr,
        ),
      );

      final entries = await categoryBox.addAll(converted);
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> deleteAllItems() async {
    try {
      final categoryBox = Hive.box<Category>(_kCategoryBoxName);
      final deleted = await categoryBox.clear();

      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  // @override
  // CategoryModel? getItem(String key) {
  //   final categoryBox = Hive.box<Category>(_kCategoryBoxName);

  //   return categoryBox.get(key);
  // }

  @override
  Future<List<CategoryModel>> getItems() async {
    final categoryBox = Hive.box<Category>(_kCategoryBoxName);

    return categoryBox.values.map<CategoryModel>((e) {
      return CategoryModel(
        id: e.id,
        image: e.image,
        createdAt: e.createdAt,
        titleEn: e.titleEn,
        titleTr: e.titleTr,
      );
    }).toList();
  }

  @override
  List<Category>? getValues() {
    final categoryBox = Hive.box<Category>(_kCategoryBoxName);
    return categoryBox.values.toList();
  }

  @override
  Future<bool> putItem(String key, CategoryModel item) async {
    try {
      final categoryBox = Hive.box<Category>(_kCategoryBoxName);

      final categoryModel = Category(
        id: item.id,
        image: item.image,
        createdAt: item.createdAt,
        titleTr: item.titleTr,
        titleEn: item.titleEn,
      );

      await categoryBox.put(key, categoryModel);
      return true;
    } on Exception catch (e) {
      return false;
    }
  }

  // @override
  // Future<bool> putItems(List<CategoryModel> items) async {
  //   try {
  //     final categoryBox = Hive.box<Category>(_kCategoryBoxName);
  //     await categoryBox.putAll(
  //       Map.fromEntries(
  //         items.map((e) => MapEntry(e.id, e)),
  //       ),
  //     );

  //     return true;
  //   } on Exception catch (e) {
  //     return false;
  //   }
  // }

  @override
  Future<bool> removeItem(String key) async {
    final categoryBox = Hive.box<Category>(_kCategoryBoxName);
    await categoryBox.delete(key);
    return true;
  }

  @override
  CategoryModel? getItem(String key) {
    // TODO: implement getItem
    throw UnimplementedError();
  }
}
