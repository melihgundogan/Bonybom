import 'package:bonybom_app/country_select/country.dart';
import 'package:flutter/material.dart';

class CountryChoose extends StatefulWidget {
  @override
  _CountryChooseState createState() => _CountryChooseState();
}

class _CountryChooseState extends State<CountryChoose> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: s.height,
          width: s.width,
          child: Stack(children: [
            Opacity(
              opacity: 0.9,
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
            const Center(
              child: MyStatefulWidget(),
            ),
          ]),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = '<New>';
  @override
  Widget build(BuildContext context) {
    List countries = CountryNotifier().countries;
    return DropdownButton<String>(
      value: dropdownValue,
      hint: Text("Ülkenizi seçin..."),
      icon: const Icon(Icons.arrow_downward),
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: countries.map((value) {
        return new DropdownMenuItem<String>(
          value: value['id'].toString(),
          child: new Text(value['name']),
        );
      }).toList(),
    );
  }
}
