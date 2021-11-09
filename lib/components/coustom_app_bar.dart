import 'package:bonybom_app/enums.dart';
import 'package:bonybom_app/screens/home/view/home_page.dart';
import 'package:bonybom_app/screens/profile/userpage.dart';
import 'package:bonybom_app/source/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    var _svgIcon = new SvgIcn();

    return SafeArea(
      top: false,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: _svgIcon.home),
          Image.asset(
            "assets/icons/Logo.png",
            width: s.width / 11,
            height: s.width / 11,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => userPage()));
              },
              child: Padding(
                padding: EdgeInsets.only(right: s.width / 25),
                child: _svgIcon.profile,
              )),
        ],
      ),
    );
  }
}
