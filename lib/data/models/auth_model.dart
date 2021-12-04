import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/auth.dart';

part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel {
  String? message;
  List<int>? categories;
  int? status;
  String? token;

  AuthModel({
    this.message,
    this.categories,
    this.status,
    this.token,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);

  Auth toEntity() => Auth(
        message: this.message,
        categories: this.categories,
        status: this.status,
        token: this.token,
      );

  AuthModel fromEntity(Auth auth) {
    return AuthModel(
      message: this.message,
      categories: this.categories,
      status: this.status,
      token: this.token,
    );
  }

  @override
  AuthModel fromJson(Map<String, dynamic> json) {
    return AuthModel.fromJson(json);
  }
}
