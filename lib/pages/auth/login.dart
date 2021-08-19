import 'package:bonybom_app/pages/auth/info.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    "Tekrar Hoşgeldin!",
                    style: TextStyle(
                      fontSize: hh(context, 18),
                      fontWeight: FontWeight.w700,
                      color: Clr.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: hh(context, 6)),
                  Text(
                    "Lütfen bilgilerinizi giriniz",
                    style: TextStyle(
                      fontSize: hh(context, 12),
                      fontWeight: FontWeight.w500,
                      color: Clr.white.withOpacity(0.75),
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: hh(context, 84)),
                  authInput(context, s, hintText: "Email"),
                  SizedBox(height: hh(context, 15)),
                  authInput(context, s, hintText: "Şifre", isSecure: true),
                  Container(
                    width: s.width,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: ww(context, 32)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Şifremi Unuttum?",
                        style: TextStyle(
                          fontSize: hh(context, 12),
                          fontWeight: FontWeight.w500,
                          color: Color(0xffDFDFDF),
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: hh(context, 77)),
                  authButton(
                    context,
                    s,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Info()));
                    },
                    bgColor: Clr.mainBlue,
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(
                        fontSize: hh(context, 14),
                        fontWeight: FontWeight.w600,
                        color: Clr.white,
                      ),
                    ),
                  ),
                  SizedBox(height: hh(context, 15)),
                  authButton(
                    context,
                    s,
                    onPressed: () {},
                    bgColor: Clr.darkestGray.withOpacity(0.7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Google.svg",
                          width: ww(context, 22),
                          height: ww(context, 22),
                        ),
                        SizedBox(width: ww(context, 6)),
                        Text(
                          "Google ile Devam Et",
                          style: TextStyle(
                            fontSize: hh(context, 14),
                            fontWeight: FontWeight.w600,
                            color: Clr.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: hh(context, 24)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hesabın yok mu?  ",
                        style: TextStyle(
                          fontSize: hh(context, 12),
                          fontWeight: FontWeight.w500,
                          color: Clr.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          final state =
                              Provider.of<AuthPage>(context, listen: false);
                          state.changeLogin();
                        },
                        child: Text(
                          "Şimdi Kaydol",
                          style: TextStyle(
                            fontSize: hh(context, 12),
                            fontWeight: FontWeight.w700,
                            color: Clr.mainBlue,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
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
