import 'package:flutter/material.dart';

class Clr {
  static Color bgDark = Color(0xff010101);
  static Color bgLight = Color(0xffefefef);
  static Color mainBlue = Color(0xff0B72EF);
  static Color darkestGray = Color(0xff202020);
  static Color white = Colors.white;
  static Color black = Colors.black;
}

double ww(BuildContext context, double d) {
  var w = MediaQuery.of(context).size.width;
  return (w * d) / 414;
}

double hh(BuildContext context, double d) {
  var h = MediaQuery.of(context).size.height;
  return (h * d) / 896;
}
