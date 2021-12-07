import 'package:bonybom_app/core/extension/string_extension.dart';
import 'package:bonybom_app/core/init/lang/locale_keys.g.dart';
import 'package:flutter/material.dart';

class NotFoundNavigationWidget extends StatelessWidget {
  const NotFoundNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text(LocaleKeys.navigation_not_found.locale));
  }
}
