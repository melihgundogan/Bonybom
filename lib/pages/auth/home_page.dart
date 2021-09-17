import 'package:bonybom_app/pages/auth/diamond.dart';
import 'package:bonybom_app/pages/auth/notification.dart';
import 'package:bonybom_app/pages/auth/special_category.dart';
import 'package:bonybom_app/pages/auth/userpages/userpage.dart';
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
        padding: EdgeInsets.only(top: s.width / 13, bottom: s.width / 38),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: s.width / 15, left: s.width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpecialCategory()));
                      },
                      child: _svgIcon.home),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Image.asset(
                      "assets/icons/Logo.png",
                      width: s.width / 15,
                      height: s.height / 15,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userPage()));
                      },
                      child: _svgIcon.profile),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: s.height / 10, left: s.width / 15, right: s.width / 15),
              child: Material(
                color: Colors.blue,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(21)),
                  height: s.height / 1.7,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: s.height / 14, left: s.width / 19, right: s.width / 19),
              child: Card(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: s.width / 13, left: s.width / 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NotificationPage()));
                                },
                                child: _svgIcon.file),
                            GestureDetector(
                                onTap: () {}, child: _svgIcon.dislike),
                            GestureDetector(
                                onTap: () {}, child: _svgIcon.bookmark),
                            GestureDetector(onTap: () {}, child: _svgIcon.like),
                            Container(
                              width: 33,
                              height: 33,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddDiamond()));
                                  },
                                  child: _svgIcon.diamond),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
