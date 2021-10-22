import 'package:bonybom_app/source/country.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CountryChoose extends StatefulWidget {
  @override
  _CountryChooseState createState() => _CountryChooseState();
}

class _CountryChooseState extends State<CountryChoose> {
  var _svgIcon=new SvgIcn();
  
  @override
  Widget build(BuildContext context) {
    List countries= CountryNotifier().countries;
    final s = MediaQuery.of(context).size;
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 1, 
        child: new Scaffold(
          body: ListView.builder(
            itemCount: countries == null ? 0:countries.length,
            itemBuilder: (BuildContext context, int indeks){
              return new Card(child: new Text(countries[indeks]["name"]),);

            },
            )
        ),
      ),
      
    );
  }
}