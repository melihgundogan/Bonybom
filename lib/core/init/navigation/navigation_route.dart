import 'package:flutter/material.dart';

import '../../../presentation/auth/view/login_view.dart';
import '../../../presentation/auth/view/register_view.dart';
import '../../constants/navigation/navigation_constants.dart';
import '../../widgets/not_found_navigation_widget.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.LOGIN:
        return normalNavigate(LoginView(), "");
      case NavigationConstants.REGISTER:
        return normalNavigate(RegisterView(), "");
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}
