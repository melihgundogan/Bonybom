import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_model.g.dart';

@JsonSerializable()
class AuthRequestModel {
  final String email;
  final String password;

  AuthRequestModel({required this.email, required this.password});

  factory AuthRequestModel.fromJson(Map<String, dynamic> json) => _$AuthRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthRequestModelToJson(this);
}
