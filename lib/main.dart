import 'package:bonybom_app/models/theme_model.dart';
import 'package:bonybom_app/auth.dart';
import 'package:bonybom_app/dark_light.dart';
import 'package:bonybom_app/opening.dart';
import 'package:bonybom_app/screens/profile/country_choose.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/response_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthPage()),
      ChangeNotifierProvider(create: (_) => CategoryNotifier()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CountryChoose(),
          );
        }));
  }
}
