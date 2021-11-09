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

Map<String, dynamic> _$SuggestionModelToJson(SuggestionModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'image': instance.image,
    'title': instance.title,
    'description': instance.description,
    'startAt': instance.startAt,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('endAt', instance.endAt);
  writeNotNull('likeCount', instance.likeCount);
  writeNotNull('dislikeCount', instance.dislikeCount);
  writeNotNull('tickCount', instance.tickCount);
  writeNotNull('saveCount', instance.saveCount);
  writeNotNull('createdAt', instance.createdAt);
  return val;
}
