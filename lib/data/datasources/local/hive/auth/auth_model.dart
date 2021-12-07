import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../domain/entities/auth.dart';

part 'auth_model.g.dart';

@HiveType(typeId: 0, adapterName: 'AuthAdapter')
class AuthModel {
  @HiveField(0)
  String? message;

  @HiveField(1)
  List<int>? categories;

  @HiveField(2)
  int? status;

  @HiveField(3)
  String? token;

  @HiveField(4)
  bool? isLogin;

  AuthModel({
    this.message,
    this.categories,
    this.status,
    this.token,
    this.isLogin,
  });
}
