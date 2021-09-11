import 'package:bonybom_app/pages/auth/special_category.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: s.width / 12, bottom: s.width / 40),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: s.width / 15, left: s.width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(onTap: () {}, child: _svgIcon.home),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SpecialCategory()));
                    },
                    child: Image.asset(
                      "assets/icons/Logo.png",
                      width: s.width / 12,
                      height: s.height / 12,
                    ),
                  ),
                  GestureDetector(onTap: () {}, child: _svgIcon.profile),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: s.height / 10,left: s.width / 15,right: s.width/15),
              child: Material(
                color: Colors.blue,
                child: Container(
                  height: s.height/1.7,  
                ),
              ),
            ),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: s.width / 15, left: s.width / 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(onTap: () {}, child: _svgIcon.file),
                          GestureDetector(onTap: () {}, child: _svgIcon.dislike),
                          GestureDetector(onTap: () {}, child: _svgIcon.bookmark),
                          GestureDetector(onTap: () {}, child: _svgIcon.like),
                          GestureDetector(onTap: () {}, child: _svgIcon.diamond),
                        ],
                      ),
                    ),
                  ],  
                ), 
              ),
            ),  
          ],
        ),
      ),
    );
  }
}
