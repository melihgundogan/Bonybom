import 'package:bonybom_app/pages/auth/dark_light.dart';
import 'package:bonybom_app/pages/auth/home_page.dart';
import 'package:bonybom_app/pages/auth/info_pages/country_choose.dart';
import 'package:bonybom_app/pages/auth/notification.dart';
import 'package:bonybom_app/pages/auth/notification_pages/favorites.dart';
import 'package:bonybom_app/pages/auth/diamond.dart';
import 'package:bonybom_app/pages/auth/moreoptions.dart';
import 'package:bonybom_app/pages/auth/special_category.dart';
import 'package:bonybom_app/pages/auth/userpages/editprofile.dart';

import 'package:bonybom_app/pages/auth/userpages/userpage.dart';
import 'package:bonybom_app/pages/auth/auth.dart';
import 'package:bonybom_app/pages/auth/info.dart';
import 'package:bonybom_app/pages/auth/login.dart';
import 'package:bonybom_app/pages/auth/opening.dart';
import 'package:bonybom_app/pages/auth/register.dart';
import 'package:bonybom_app/source/providers.dart';
import 'package:bonybom_app/source/response_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,                                                   
      darkTheme: MyThemes.darkTheme,
      home: MoreOptions(),
    );
  }
}
