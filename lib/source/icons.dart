import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcn {
  Widget home =
      SvgPicture.asset('assets/icons/Home.svg', semanticsLabel: 'Home');
  Widget category =
      SvgPicture.asset('assets/icons/category.svg', semanticsLabel: 'Category');
  Widget warning =
      SvgPicture.asset('assets/icons/warning.svg', semanticsLabel: 'Warning');
  Widget notification = SvgPicture.asset('assets/icons/notification.svg',
      semanticsLabel: 'Notification');
  Widget email =
      SvgPicture.asset('assets/icons/email.svg', semanticsLabel: 'Email');
  Widget heart =
      SvgPicture.asset('assets/icons/heart.svg', semanticsLabel: 'Heart');
  Widget profile =
      SvgPicture.asset('assets/icons/profile.svg', semanticsLabel: 'Heart');
}
