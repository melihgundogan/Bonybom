import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import 'category/category_select.dart';
import 'widgets.dart';

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
                    fit: BoxFit.fitWidth,
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
                    SizedBox(height: hh(context, 194)),
                    Image.asset(
                      "assets/icons/Logo.png",
                      width: ww(context, 38.13),
                      height: hh(context, 52.65),
                    ),
                    SizedBox(height: hh(context, 84)),
                    authButton(
                      context,
                      s,
                      bgColor: Clr.darkestGray.withOpacity(0.7),
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
                              "Doğum Tarihi",
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
                    SizedBox(height: 33),
                    authButton(
                      context,
                      s,
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
                              "Konum Seç",
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
                    SizedBox(height: 33),
                    authButton(
                      context,
                      s,
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
                              "Konum Seç",
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
