class CategoryModel {
  final String id;
  final String name;
  final String image;
  final String created_at;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.created_at});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    var cat = CategoryModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      created_at: json['created_at'],
    );

    return cat;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['created_at'] = this.created_at;
    return data;
  }
}
