class GettingCountries{
  final String name;
  final String flag;

  GettingCountries(this.name,this.flag);
  factory GettingCountries.fromJson(Map<String,dynamic> json){
    return GettingCountries(json["name"] as String,json["flag"] as String);
  }
}