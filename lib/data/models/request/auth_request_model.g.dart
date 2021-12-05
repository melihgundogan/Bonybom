// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRequestModel _$AuthRequestModelFromJson(Map<String, dynamic> json) =>
    AuthRequestModel(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AuthRequestModelToJson(AuthRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
