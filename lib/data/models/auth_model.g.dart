// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      message: json['message'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)?.map((e) => e as int).toList(),
      status: json['status'] as int?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'message': instance.message,
      'categories': instance.categories,
      'status': instance.status,
      'token': instance.token,
    };
