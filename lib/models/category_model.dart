class CategoryModel {
  final String id;
  final String image;
  final String created_at;
  final String title_tr;
  final String title_en;

  CategoryModel({
    required this.created_at,
    required this.title_tr,
    required this.title_en,
    required this.id,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    var cat = CategoryModel(
        id: json['id'],
        image: json['image'],
        created_at: json['created_at'],
        title_tr: json['title_tr'],
        title_en: json['title_en']);

    return cat;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['created_at'] = this.created_at;
    data['title_tr'] = this.title_tr;
    data['title_en'] = this.title_en;
    return data;
  }
}
