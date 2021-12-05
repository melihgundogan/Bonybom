import 'package:bonybom_app/core/widgets/index.dart' as core_widgets;
import 'package:bonybom_app/presentation/auth/view/login_view.dart';
import 'package:bonybom_app/presentation/home/view/home_page.dart';

import 'package:bonybom_app/screens/sing_in/login.dart';
import 'package:bonybom_app/presentation/splash/controller/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection_container.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget buildBody(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashCubit, SplashState>(builder: (context, state) {
        return state.when(
          initial: () => core_widgets.LoadingWidget(),
          loading: () => core_widgets.LoadingWidget(),
          notLoggedIn: () => LoginView(),
          loggedIn: () => HomePage(),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<SplashCubit>()..controlSplashStatus(),
      child: buildBody(context),
    );
  }
}
