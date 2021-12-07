import 'package:hive_flutter/hive_flutter.dart';

part 'category.g.dart';

@HiveType(typeId: 1, adapterName: "CategoryAdapter")
class Category {
  @HiveField(0)
  String? id;

  @HiveField(1)
  String? image;

  @HiveField(2)
  DateTime? createdAt;

  @HiveField(3)
  String? titleTr;

  @HiveField(4)
  String? titleEn;

  Category({
    this.id,
    this.image,
    this.createdAt,
    this.titleTr,
    this.titleEn,
  });
}
