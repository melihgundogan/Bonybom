import 'package:bonybom_app/dark_light.dart';
import 'package:bonybom_app/screens/home/home_page.dart';
import 'package:bonybom_app/opening.dart';
import 'package:bonybom_app/screens/more_diamond/moreoptions.dart';
import 'package:bonybom_app/screens/notification/notification.dart';
import 'package:bonybom_app/screens/profile/userpage.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: HomePage(),
    );
  }
}
