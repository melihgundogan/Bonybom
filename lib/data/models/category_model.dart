import 'package:bonybom_app/domain/entities/category.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel extends Category {
  CategoryModel({
    @required String? id,
    @required String? image,
    @required DateTime? createdAt,
    @required String? titleTr,
    @required String? titleEn,
  }) : super(
          id: id,
          image: image,
          createdAt: createdAt,
          titleTr: titleTr,
          titleEn: titleEn,
        );

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
