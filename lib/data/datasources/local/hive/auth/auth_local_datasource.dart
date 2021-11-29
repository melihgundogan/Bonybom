import 'package:flutter/foundation.dart' as foundation;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../../ILocalDataSourceManager.dart';
import 'auth_model.dart';

class AuthLocalDataSourceImpl implements ILocalDataSourceManager<AuthModel> {
  final _kAuthBoxName = "auth_box";

  @override
  Future<bool> addItems(List<AuthModel> items) async {
    try {
      final authBox = Hive.box<AuthModel>(_kAuthBoxName);

      final deleted = await authBox.clear();

      final converted = items
          .map(
            (e) => AuthModel(message: e.message, categories: e.categories, status: e.status, token: e.token, isLogin: e.isLogin),
          )
          .toList();

      final entries = await authBox.addAll(converted);
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> deleteAllItems() async {
    try {
      final authBox = Hive.box<AuthModel>(_kAuthBoxName);
      final deleted = await authBox.clear();

      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> deleteDb() {
    // TODO: implement deleteDb
    throw UnimplementedError();
  }

  @override
  AuthModel? getItem(String key) {
    final authBox = Hive.box<AuthModel>(_kAuthBoxName);

    return authBox.get(key);
  }

  @override
  Future<List<AuthModel>> getItems() async {
    final authBox = Hive.box<AuthModel>(_kAuthBoxName);
    return authBox.values.map<AuthModel>((e) {
      return AuthModel(
        message: e.message,
        categories: e.categories,
        status: e.status,
        token: e.token,
        isLogin: e.isLogin,
      );
    }).toList();
  }

  @override
  List<AuthModel>? getValues() {
    final authBox = Hive.box<AuthModel>(_kAuthBoxName);
    return authBox.values.toList();
  }

  @override
  Future<bool> initDb() async {
    try {
      if (!foundation.kIsWeb) {
        final appDocumentDir = await getApplicationDocumentsDirectory();
        Hive.init(appDocumentDir.path);
      }

      Hive.registerAdapter(AuthAdapter());
      await Hive.openBox<AuthModel>(_kAuthBoxName);
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> putItem(String key, AuthModel item) async {
    try {
      final authBox = Hive.box<AuthModel>(_kAuthBoxName);
      await authBox.put(key, item);
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> putItems(List<AuthModel> items) async {
    try {
      final authBox = Hive.box<AuthModel>(_kAuthBoxName);
      await authBox.putAll(
        Map.fromEntries(
          items.map(
            (e) => MapEntry(e.token, e),
          ),
        ),
      );
      return true;
    } on Exception catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> removeItem(String key) async {
    final authBox = Hive.box<AuthModel>(_kAuthBoxName);
    await authBox.delete(key);
    return true;
  }
}
