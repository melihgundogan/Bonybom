// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestionModel _$SuggestionModelFromJson(Map<String, dynamic> json) =>
    SuggestionModel(
      id: json['id'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      startAt: json['startAt'] as String?,
      endAt: json['endAt'] as String?,
      likeCount: json['likeCount'] as String?,
      dislikeCount: json['dislikeCount'] as String?,
      tickCount: json['tickCount'] as String?,
      saveCount: json['saveCount'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$SuggestionModelToJson(SuggestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'tickCount': instance.tickCount,
      'saveCount': instance.saveCount,
      'createdAt': instance.createdAt,
    };
