import 'package:bonybom_app/components/coustom_app_bar.dart';
import 'package:bonybom_app/enums.dart';
import 'package:bonybom_app/screens/more_diamond/diamond.dart';
import 'package:bonybom_app/screens/home/home_page.dart';
import 'package:bonybom_app/screens/category/special_category.dart';
import 'package:bonybom_app/screens/profile/userpage.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({Key? key}) : super(key: key);

  @override
  _MoreOptionsState createState() => _MoreOptionsState();
}

class _MoreOptionsState extends State<MoreOptions> {
  var _svgIcon = new SvgIcn();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var sw = screenSize.width;
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
      body: Container(
        width: sw,
        color: Colors.grey.shade200,
        child: Padding(
          padding: EdgeInsets.only(top: sw / 12, bottom: sw / 40),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: sw / 5),
                child: Text(
                  "DAHA FAZLA HAK ELDE ET!",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: sw / 20),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: sw / 8, bottom: sw / 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  height: sw / 5,
                  width: sw / 1.2,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "ARKADAŞLARINI DAVET ET",
                              style: TextStyle(
                                  fontSize: sw / 26,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text("Bağlantını paylaş ve ek +50 elmas kazan.",
                                style: TextStyle(fontSize: sw / 35)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddDiamond()));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: sw / 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  height: sw / 5,
                  width: sw / 1.2,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "ELMAS SATIN AL",
                              style: TextStyle(
                                  fontSize: sw / 26,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text("Elmas paket satın al",
                                style: TextStyle(fontSize: sw / 35)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: sw / 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  height: sw / 5,
                  width: sw / 1.2,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "VIDEO İZLEYİN",
                              style: TextStyle(
                                  fontSize: sw / 26,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text("50 elmas kazanmak için bir video izleyin",
                                style: TextStyle(fontSize: sw / 35)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: sw / 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  height: sw / 5,
                  width: sw / 1.2,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "PREMIUM'U DENE",
                              style: TextStyle(
                                  fontSize: sw / 26,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text("Her şeyin sana özel olduğu bir dünya",
                                style: TextStyle(fontSize: sw / 35)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
