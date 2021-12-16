import 'dart:io';
import 'dart:typed_data';

import 'package:bonybom_app/widgets.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:url_launcher/url_launcher.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

bool isChecked1 = false;
bool isChecked2 = false;

class _RegisterState extends State<Register> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.red;
    }
    return Colors.blue;
  }

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
                  authInput(context, s, hintText: "Ad Soyad"),
                  SizedBox(height: hh(context, 15)),
                  authInput(context, s, hintText: "Şifre", isSecure: false),
                  //SizedBox(height: hh(context, 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Future<String> loadAsset() async {
                                return await DefaultAssetBundle.of(context)
                                    .loadString(
                                        'assets/bonybom_kulllanm_kosullar.txt');
                              }
                            },
                            child: Text(
                              "Kullanıcı Sözleşmesini",
                              style: TextStyle(
                                fontSize: hh(context, 12),
                                fontWeight: FontWeight.w700,
                                color: Clr.mainBlue,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          Text(
                            "okudum,onayladım.",
                            style: TextStyle(
                              fontSize: hh(context, 12),
                              fontWeight: FontWeight.w500,
                              color: Clr.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: s.width / 9, left: s.width / 11.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          },
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () async {
                                final url =
                                    "https://bonybom.com/privacy_policy.html";
                                  openBrowserURL(url: url);
                              }
                            ,
                              child: Text(
                                "Gizlilik Sözleşmesini",
                                style: TextStyle(
                                  fontSize: hh(context, 12),
                                  fontWeight: FontWeight.w700,
                                  color: Clr.mainBlue,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            Text(
                              "okudum,onayladım.",
                              style: TextStyle(
                                fontSize: hh(context, 12),
                                fontWeight: FontWeight.w500,
                                color: Clr.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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

  Future openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: inApp, forceWebView: inApp, enableJavaScript: true);
    }
  }
}
