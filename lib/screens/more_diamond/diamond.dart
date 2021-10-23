import 'package:bonybom_app/components/coustom_app_bar.dart';
import 'package:bonybom_app/enums.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: CustomAppBar(
              selectedMenu: MenuState.home,
            )),
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.only(top: sw / 12, bottom: sw / 40),
          child: Column(
            children: [
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
