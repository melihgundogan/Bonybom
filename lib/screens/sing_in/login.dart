import 'package:bonybom_app/core/extension/string_extension.dart';
import 'package:bonybom_app/core/init/lang/locale_keys.g.dart';
import 'package:bonybom_app/screens/profile/info.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/theme.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../widgets.dart';

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
                  SizedBox(height: hh(context, 112)),
                  Image.asset(
                    "assets/icons/Logo.png",
                    width: ww(context, 63.74),
                    height: hh(context, 87),
                  ),
                  SizedBox(height: hh(context, 6)),
                  Text(
                    LocaleKeys.welcome_again.locale,
                    style: TextStyle(
                      fontSize: hh(context, 18),
                      fontWeight: FontWeight.w700,
                      color: Clr.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: hh(context, 6)),
                  Text(
                    LocaleKeys.please_enter_your_information.locale,
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
                  authInput(context, s, hintText: LocaleKeys.password.locale, isSecure: true),
                  Container(
                    width: s.width,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: ww(context, 32)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.forgot_my_password.locale,
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
                      LocaleKeys.register.locale,
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
                          LocaleKeys.continue_with_google.locale,
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
                        LocaleKeys.do_not_have_an_account.locale,
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
                          LocaleKeys.register_now.locale,
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
