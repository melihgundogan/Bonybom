import 'package:bonybom_app/domain/entities/suggestion.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'suggestion_model.g.dart';

@JsonSerializable()
class SuggestionModel extends INetworkModel<SuggestionModel> {
  String? id;
  String? image;
  String? title;
  String? description;
  String? startAt;
  String? endAt;
  String? likeCount;
  String? dislikeCount;
  String? tickCount;
  String? saveCount;
  String? createdAt;

  SuggestionModel({
    this.id,
    this.image,
    this.title,
    this.description,
    this.startAt,
    this.endAt,
    this.likeCount,
    this.dislikeCount,
    this.tickCount,
    this.saveCount,
    this.createdAt,
  });

  factory SuggestionModel.fromJson(Map<String, dynamic> json) => _$SuggestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestionModelToJson(this);

  Suggestion toEntity() => Suggestion(
        id: this.id,
        image: this.image,
        title: this.title,
        description: this.description,
        startAt: this.startAt,
        endAt: this.endAt,
        likeCount: this.likeCount,
        dislikeCount: this.dislikeCount,
        tickCount: this.tickCount,
        saveCount: this.saveCount,
        createdAt: this.createdAt,
      );

  SuggestionModel fromEntity(Suggestion suggestion) {
    return SuggestionModel(
      id: suggestion.id,
      image: suggestion.image,
      title: suggestion.title,
      description: suggestion.description,
      startAt: suggestion.startAt,
      endAt: suggestion.endAt,
      likeCount: suggestion.likeCount,
      dislikeCount: suggestion.dislikeCount,
      tickCount: suggestion.tickCount,
      saveCount: suggestion.saveCount,
      createdAt: suggestion.createdAt,
    );
  }

  @override
  SuggestionModel fromJson(Map<String, dynamic> json) {
    return SuggestionModel.fromJson(json);
  }
}
