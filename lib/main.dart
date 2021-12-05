import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'dark_light.dart';
import 'injection_container.dart' as di;
import 'presentation/splash/view/splash.dart';

void main() async {
  di.init();
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
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
      home: SplashView(),
    );
  }
}
