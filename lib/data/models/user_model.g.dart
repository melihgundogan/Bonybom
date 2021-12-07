// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      locationId: json['locationId'] as int?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'locationId': instance.locationId,
      'gender': instance.gender,
      'dob': instance.dob,
      'categories': instance.categories,
    };
