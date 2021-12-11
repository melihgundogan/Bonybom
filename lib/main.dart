import 'package:bonybom_app/auth.dart';
import 'package:bonybom_app/dark_light.dart';
import 'package:bonybom_app/opening.dart';
import 'package:bonybom_app/screens/category/category_select.dart';
import 'package:bonybom_app/screens/category/other_categorys.dart';
import 'package:bonybom_app/screens/category/special_category.dart';
import 'package:bonybom_app/screens/category/to_you.dart';
import 'package:bonybom_app/screens/home/home_page.dart';
import 'package:bonybom_app/screens/more_diamond/diamond.dart';
import 'package:bonybom_app/screens/more_diamond/moreoptions.dart';
import 'package:bonybom_app/screens/notification/notification.dart';
import 'package:bonybom_app/screens/profile/clean_up_cache.dart';
import 'package:bonybom_app/screens/profile/country_choose.dart';
import 'package:bonybom_app/screens/profile/editprofile.dart';
import 'package:bonybom_app/screens/profile/info.dart';
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
      title: 'Bonybom',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: HomePage(),
    );
  }
}
