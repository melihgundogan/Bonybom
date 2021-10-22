import 'package:bonybom_app/screens/sing_in/login.dart';
import 'package:bonybom_app/screens/sing_up/register.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, AuthPage state, Widget? child) {
        return Scaffold(
          body: state.login ? Login() : Register(),
        );
      },
    );
  }
}
