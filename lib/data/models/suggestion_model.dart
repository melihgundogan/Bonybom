import 'package:bonybom_app/domain/entities/suggestion.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'suggestion_model.g.dart';

@JsonSerializable()
class SuggestionModel extends Suggestion {
  SuggestionModel({
    @required String? id,
    @required String? image,
    @required String? title,
    @required String? description,
    @required String? startAt,
    @required String? endAt,
    @required String? likeCount,
    @required String? dislikeCount,
    @required String? tickCount,
    @required String? saveCount,
    @required String? createdAt,
  }) : super(
          id: id,
          image: image,
          title: title,
          description: description,
          startAt: startAt,
          endAt: endAt,
          likeCount: likeCount,
          dislikeCount: dislikeCount,
          tickCount: tickCount,
          saveCount: saveCount,
          createdAt: createdAt,
        );

  factory SuggestionModel.fromJson(Map<String, dynamic> json) => _$SuggestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestionModelToJson(this);

  // Suggestion toEntity() => Suggestion(
  //       id: this.id,
  //       image: this.image,
  //       title: this.title,
  //       description: this.description,
  //       startAt: this.startAt,
  //       endAt: this.endAt,
  //       likeCount: this.likeCount,
  //       dislikeCount: this.dislikeCount,
  //       tickCount: this.tickCount,
  //       saveCount: this.saveCount,
  //       createdAt: this.createdAt,
  //     );

  // SuggestionModel fromEntity(Suggestion suggestion) {
  //   return SuggestionModel(
  //     id: suggestion.id,
  //     image: suggestion.image,
  //     title: suggestion.title,
  //     description: suggestion.description,
  //     startAt: suggestion.startAt,
  //     endAt: suggestion.endAt,
  //     likeCount: suggestion.likeCount,
  //     dislikeCount: suggestion.dislikeCount,
  //     tickCount: suggestion.tickCount,
  //     saveCount: suggestion.saveCount,
  //     createdAt: suggestion.createdAt,
  //   );
  // }

}
