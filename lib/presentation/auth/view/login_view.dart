import 'package:bonybom_app/core/extension/string_extension.dart';
import 'package:bonybom_app/core/init/lang/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/index.dart' as core_widgets;
import '../../../injection_container.dart';
import '../../../source/theme.dart';
import '../../home/view/home_page.dart';
import '../controller/index.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_input.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) =>
          AuthCubit(formKey: formKey, emailController: emailController, passwordController: passwordController, loginOperation: sl()),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            state.navigate(context);
          }
        },
        builder: (context, state) {
          if (state is Initial) {
            return initialBodyBuild(s, context);
          }

          if (state is AuthLoadingProcess) {
            return core_widgets.LoadingWidget();
          }

          return initialBodyBuild(s, context);
          // return initialBodyBuild(s, context);
        },
      ),
    );
  }

  Container initialBodyBuild(Size s, BuildContext context) {
    return Container(
      width: s.width,
      height: s.height,
      color: Clr.black,
      child: buildStack(s, context),
    );
  }

  Stack buildStack(Size s, BuildContext context) {
    return Stack(
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
        buildLoginContainer(s, context),
      ],
    );
  }

  Container buildLoginContainer(Size s, BuildContext context) {
    return Container(
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
            AuthInput(
              hintText: "Email",
              s: s,
              controller: emailController,
            ),
            SizedBox(height: hh(context, 15)),
            AuthInput(s: s, hintText: LocaleKeys.password.locale, isSecure: true, controller: passwordController),
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
            AuthButton(
              s: s,
              onPressed: () {
                context.read<AuthCubit>().authUser();
              },
              bgColor: Clr.mainBlue,
              child: Text(
                LocaleKeys.login.locale,
                style: TextStyle(
                  fontSize: hh(context, 14),
                  fontWeight: FontWeight.w600,
                  color: Clr.white,
                ),
              ),
            ),
            SizedBox(height: hh(context, 15)),
            AuthButton(
              s: s,
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
                  onPressed: () {},
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
    );
  }
}

extension LoginCompleteExtension on Authenticated {
  void navigate(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
