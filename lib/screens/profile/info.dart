import 'package:bonybom_app/core/extension/string_extension.dart';
import 'package:bonybom_app/core/init/lang/locale_keys.g.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import '../category/category_select.dart';
import '../../widgets.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        color: Clr.black,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.4,
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
            Container(
              width: s.width,
              height: s.height,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: s.width / 3),
                      child: Image.asset(
                        "assets/icons/Logo.png",
                        width: ww(context, 45.0),
                        height: hh(context, 65.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: s.width / 50,
                          right: s.width / 50,
                          left: s.width / 50),
                      child: Text(
                        LocaleKeys.information_text.locale,
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: s.width / 10),
                      child: authButton(
                        context,
                        s,
                        bgColor: Clr.darkestGray.withOpacity(0.7),
                        onPressed: () {
                          // doğum tarihinin seçilmesi
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ww(context, 12)),
                              child: Icon(
                                Ionicons.calendar_outline,
                                size: ww(context, 30),
                                color: Clr.white.withOpacity(0.75),
                              ),
                            ),
                            SizedBox(width: ww(context, 12)),
                            Expanded(
                              child: Text(
                                LocaleKeys.date_of_birth.locale,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: hh(context, 18),
                                  fontWeight: FontWeight.w700,
                                  color: Clr.white,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            SizedBox(width: ww(context, 24)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: s.width / 15),
                      child: authButton(
                        context,
                        s,
                        onPressed: () {
                          // ülke verilerinin çekilmesi ve seçilmesi.
                        },
                        bgColor: Clr.darkestGray.withOpacity(0.7),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ww(context, 12)),
                              child: Icon(
                                Ionicons.map_outline,
                                size: ww(context, 30),
                                color: Clr.white.withOpacity(0.75),
                              ),
                            ),
                            SizedBox(width: ww(context, 12)),
                            Expanded(
                              child: Text(
                                LocaleKeys.choose_city.locale,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: hh(context, 18),
                                  fontWeight: FontWeight.w700,
                                  color: Clr.white,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            SizedBox(width: ww(context, 24)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: s.width / 15),
                      child: authButton(
                        context,
                        s,
                        onPressed: () {
                          // cinsiyet seçilmesi.
                        },
                        bgColor: Clr.darkestGray.withOpacity(0.7),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ww(context, 12)),
                              child: Icon(
                                Ionicons.person_outline,
                                size: ww(context, 30),
                                color: Clr.white.withOpacity(0.75),
                              ),
                            ),
                            SizedBox(width: ww(context, 12)),
                            Expanded(
                              child: Text(
                                LocaleKeys.gender.locale,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: hh(context, 18),
                                  fontWeight: FontWeight.w700,
                                  color: Clr.white,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            SizedBox(width: ww(context, 24)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: ww(context, 25),
              right: ww(context, 25),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategorySelect()));
                },
                shape: CircleBorder(),
                height: hh(context, 48),
                color: Clr.mainBlue,
                child: Icon(
                  Icons.chevron_right,
                  color: Clr.bgDark,
                  size: ww(context, 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
