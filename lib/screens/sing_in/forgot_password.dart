import 'package:bonybom_app/source/theme.dart';
import 'package:bonybom_app/widgets.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
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
          Padding(
            padding: EdgeInsets.only(top: s.width/20, left: s.width/25),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blue,),
            ),
          ),
          Container(
            width: s.width,
            height: s.height,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: hh(context, 112)),
                  Image.asset(
                    "assets/icons/Logo.png",
                    width: ww(context, 63.74),
                    height: hh(context, 87),
                  ),
                  SizedBox(height: hh(context, 6)),
                  Text(
                    "Şifremi Unuttum",
                    style: TextStyle(
                      fontSize: hh(context, 18),
                      fontWeight: FontWeight.w700,
                      color: Clr.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: hh(context, 6)),
                  Container(
                    height: s.width,
                    width: s.width/1.6,
                    child: Text(
                      "Şifre sıfırlaması için gereken kodu e-posta adresine göndereceğiz",
                      style: TextStyle(
                        fontSize: hh(context, 12),
                        fontWeight: FontWeight.w500,
                        color: Clr.white.withOpacity(0.75),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  SizedBox(height: hh(context, 84)),
                  TextField(
                    decoration: InputDecoration(hintText: "E-posta Adresi"),
                  ),
                  SizedBox(height: hh(context, 77)),
                  authButton(
                    context,
                    s,
                    onPressed: () {
                    },
                    bgColor: Clr.darkestGray.withOpacity(0.7),
                    child: Text(
                      "Sıfırla",
                      style: TextStyle(
                        fontSize: hh(context, 14),
                        fontWeight: FontWeight.w600,
                        color: Clr.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}