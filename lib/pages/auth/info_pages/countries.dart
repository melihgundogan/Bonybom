import 'dart:convert';

import 'package:bonybom_app/pages/auth/info_pages/answer_countries.dart';
import 'package:bonybom_app/pages/auth/info_pages/getting_countries.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Countries extends StatefulWidget {
  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  List<GettingCountries> parseAnswerCountry(String answer){
    return AnswerCountries.fromJson(json.decode(answer)).CountriesList;
  }
  
  Future <List<GettingCountries>> searchCountry() async{
    var url = Uri.parse("https://bonybom.com/api/location/countries/all");
    var answer = await http.get(url);
    return parseAnswerCountry(answer.body);
  }
  


  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
    
 }
}