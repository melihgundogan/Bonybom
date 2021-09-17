class CountryModel{
  final String name;
  final String id;

  CountryModel({required this.name, required this.id});
  factory CountryModel.fromJson(Map<String,dynamic> json){
    var con= CountryModel(
      id: json["id"],
      name: json["name"],
    );
    return con;
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data =new Map<String,dynamic>();
    data["id"]=this.id;
    data["name"]=this.name;
    return data;
  }
}