import 'package:bonybom_app/presentation/home/view/home_page.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';

class Opening extends StatelessWidget {
  const Opening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            Container(
              width: s.width,
              height: s.height,
              child: Image.asset(
                "assets/images/Bg.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: s.width,
                height: hh(context, 582),
                child: Image.asset(
                  "assets/images/Sally.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: s.width,
                height: hh(context, 510),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Clr.bgDark,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: hh(context, 96),
              left: ww(context, 52),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: ww(context, 40),
                    height: hh(context, 55),
                    child: Image.asset(
                      "assets/icons/Logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: hh(context, 6)),
                  Container(
                    width: ww(context, 262),
                    height: hh(context, 124),
                    child: Text(
                      "Kendini Keşfetmeye Hazır Mısın?",
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: hh(context, 40),
                        fontWeight: FontWeight.w800,
                        color: Clr.white,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: hh(context, 56),
              child: Container(
                width: s.width,
                padding: EdgeInsets.symmetric(horizontal: ww(context, 32)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  height: hh(context, 72),
                  color: Clr.mainBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ww(context, 25))),
                  child: Text(
                    "Haydi Başlayalım",
                    style: TextStyle(
                      fontSize: hh(context, 15),
                      fontWeight: FontWeight.w400,
                      color: Clr.white,
                    ),
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
