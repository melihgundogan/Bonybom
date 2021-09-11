import 'package:bonybom_app/pages/auth/info_pages/getting_countries.dart';

class AnswerCountries{
  List <GettingCountries> CountriesList;
  AnswerCountries(this.CountriesList);
  factory AnswerCountries.fromJson(Map<String,dynamic> json){
    var jsonArray=json["name"] as List;
    List<GettingCountries> CountriesList =jsonArray.map((ObjectJsonArray) => GettingCountries.fromJson(ObjectJsonArray)).toList();
    return AnswerCountries(CountriesList);
  }
}