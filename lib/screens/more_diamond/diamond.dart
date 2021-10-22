import 'package:bonybom_app/screens/category/special_category.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';

class AddDiamond extends StatefulWidget {
  const AddDiamond({Key? key}) : super(key: key);

  @override
  _AddDiamondState createState() => _AddDiamondState();
}

class _AddDiamondState extends State<AddDiamond> {
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var sw = screenSize.width;
    var sh = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.only(top: sw / 12, bottom: sw / 40),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: sw / 15, left: sw / 20),
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
                        width: sw / 12,
                        height: sw / 12,
                      ),
                    ),
                    GestureDetector(onTap: () {}, child: _svgIcon.profile),
                  ],
                ),
              ),
              Container(
                height: sh / 1.5,
                width: sw / 1.3,
                margin: EdgeInsets.only(top: sw / 4.8, bottom: sw / 4.8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(35),
                      child: Text(
                        "Daha fazla hak elde etmek için elmas satın alın!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      children: [Text("100 Elmas")],
                    ),
                    Row(
                      children: [Text("200 Elmas")],
                    ),
                    Row(
                      children: [Text("500 Elmas")],
                    ),
                    Row(
                      children: [Text("1000 Elmas")],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
