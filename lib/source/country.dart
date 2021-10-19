import 'dart:convert';

import 'package:bonybom_app/models/country_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class CountryNotifier with ChangeNotifier{
  List <CountryModel> _countries=[];
  List <CountryModel> get countries => _countries;
  bool _loading=false;
  bool get loading => _loading;

  getCountries()async{
    _loading=true;
    var url=Uri.parse("https://bonybom.com/api/location/countries/all");
    var response=await http.get(url);
    List result = json.decode(response.body);
    //print(response.body);
    _countries = result.map((e) => CountryModel.fromJson(e)).toList();

    _loading = false;

    notifyListeners();
  }

}