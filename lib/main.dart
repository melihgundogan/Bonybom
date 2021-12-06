import 'package:bonybom_app/core/constants/app/app_constants.dart';
import 'package:bonybom_app/core/init/lang/language_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'dark_light.dart';
import 'injection_container.dart' as di;
import 'presentation/splash/view/splash.dart';

void main() async {
  di.init();
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: LanguageManager.instance.supportedLocales,
      path: ApplicationConstants.LANG_ASSET_PATH,
      startLocale: LanguageManager.instance.trLocale,
    ),
  );
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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashView(),
    );
  }
}
