import 'package:bonybom_app/source/country.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CountryChoose extends StatefulWidget {
  @override
  _CountryChooseState createState() => _CountryChooseState();
}

class _CountryChooseState extends State<CountryChoose> {
  var _svgIcon = new SvgIcn();

  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();
    List countries = CountryNotifier().countries;
    final s = MediaQuery.of(context).size;
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Stack(children: [
        Opacity(
          opacity: 0.25,
          child: Container(
            width: s.width,
            height: s.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/AutgBg.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          height: s.height,
          width: s.width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: s.width / 3),
                child: Image.asset(
                  "assets/icons/Logo.png",
                  width: ww(context, 90.0),
                  height: hh(context, 110.0),
                ),
              ),
              TextField(
                onChanged: (value) {},
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: countries == null ? 0 : countries.length,
                      itemBuilder: (BuildContext context, int indeks) {
                        return new Card(
                          child: new Text(countries[indeks]["name"]),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
