import 'package:bonybom_app/widgets.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          Card(
            color: Clr.darkestGray.withOpacity(0.1),
            margin: EdgeInsets.only(left: 20, top: 25),
            child: SizedBox(
              width: s.width / 6,
              height: s.height / 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/EngFlag.png"),
                        Text(
                          "ENG",
                          style: TextStyle(
                            fontSize: 10,
                            color: Clr.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Column(
                        children: [
                          Image.asset("assets/images/TrFlag.png"),
                          Text(
                            "TR",
                            style: TextStyle(
                              fontSize: 10,
                              color: Clr.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
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
                  SizedBox(height: hh(context, 84)),
                  Image.asset(
                    "assets/icons/Logo.png",
                    width: ww(context, 63.74),
                    height: hh(context, 87),
                  ),
                  SizedBox(height: hh(context, 6)),
                  Text(
                    "Yeni Hesap Oluştur",
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
                  SizedBox(height: hh(context, 59)),
                  authInput(context, s, hintText: "Email"),
                  SizedBox(height: hh(context, 15)),
                  authInput(context, s, hintText: "Kullanıcı Adı"),
                  SizedBox(height: hh(context, 15)),
                  authInput(context, s, hintText: "Şifre", isSecure: true),
                  SizedBox(height: hh(context, 64)),
                  authButton(
                    context,
                    s,
                    onPressed: () {},
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
                        "Bir hesabın var mı?  ",
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
                          "Giriş Yap",
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
