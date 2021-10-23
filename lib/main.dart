import 'dark_light.dart';
import 'screens/home/home_page.dart';
import 'opening.dart';
import 'screens/more_diamond/moreoptions.dart';
import 'screens/notification/notification.dart';
import 'screens/profile/userpage.dart';

import 'source/providers.dart';
import 'source/response_notifier.dart';
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
