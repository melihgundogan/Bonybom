import 'package:bonybom_app/pages/auth/diamond.dart';
import 'package:bonybom_app/pages/auth/notification.dart';
import 'package:bonybom_app/pages/auth/special_category.dart';
import 'package:bonybom_app/pages/auth/userpages/userpage.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';
import 'package:swipe/swipe.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _svgIcon = new SvgIcn();
  String _message = 'Swipe your screen';
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.only(top: s.width / 13, bottom: s.width / 38),
        child: Column(
          children: [
            Container(
              height: s.width / 6,
              width: s.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(31),
                      bottomRight: Radius.circular(31)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 30),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: () {}, child: _svgIcon.home),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/icons/Logo.png",
                        width: s.width / 12,
                        height: s.width / 12,
                      ),
                    ),
                    GestureDetector(onTap: () {}, child: _svgIcon.profile),
                  ],
                ),
              ),
            ),
            Swipe(
              child: Padding(
                padding: EdgeInsets.only(
                    top: s.height / 15,
                    left: s.width / 15,
                    right: s.width / 15),
                child: Container(
                  child: Text(_message,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      )),
                  height: s.height / 1.8,
                  width: s.width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              onSwipeUp: () {
                setState(() {
                  _message = 'Swiping up';
                });
              },
              onSwipeDown: () {
                setState(() {
                  _message = 'Swiping down';
                });
              },
              onSwipeLeft: () {
                setState(() {
                  _message = 'Swiping left';
                });
              },
              onSwipeRight: () {
                setState(() {
                  _message = 'Swiping right';
                });
              },
            ),
<<<<<<< HEAD
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
=======
            Padding(
              padding: EdgeInsets.only(top: s.width / 8),
              child: Container(
                height: s.width / 6,
                width: s.width / 1.18,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      EdgeInsets.only(right: s.width / 15, left: s.width / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(onTap: () {}, child: _svgIcon.file),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(onTap: () {}, child: _svgIcon.dislike),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(onTap: () {}, child: _svgIcon.bookmark),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(onTap: () {}, child: _svgIcon.like),
                      VerticalDivider(
                        color: Colors.black,
                        width: 3,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                              height: s.width / 13, child: _svgIcon.diamond)),
>>>>>>> 7a99591d3058a5190abe63e25e04889297e12b5b
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
