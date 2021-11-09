import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/init/cache/local_manager.dart';
import 'dark_light.dart';
import 'injection_container.dart' as di;
import 'screens/home/view/home_page.dart';
import 'source/providers.dart';
import 'source/response_notifier.dart';

void main() {
  di.init();

  WidgetsFlutterBinding.ensureInitialized();
  LocalManager.preferencesInit();

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
