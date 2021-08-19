class CategoryModel {
  final String id;
  final String kategoriAdi;
  final String kategoriResmi;
  final String olusturmaTarihi;

  CategoryModel(
      {required this.id,
      required this.kategoriAdi,
      required this.kategoriResmi,
      required this.olusturmaTarihi});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    var cat = CategoryModel(
      id: json['id'],
      kategoriAdi: json['kategori_adi'],
      kategoriResmi: json['kategori_resmi'],
      olusturmaTarihi: json['olusturma_tarihi'],
    );

    return cat;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kategori_adi'] = this.kategoriAdi;
    data['kategori_resmi'] = this.kategoriResmi;
    data['olusturma_tarihi'] = this.olusturmaTarihi;
    return data;
  }
}
