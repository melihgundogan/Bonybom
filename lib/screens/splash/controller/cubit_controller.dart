import 'package:bonybom_app/core/constants/enums/locale_keys_enum.dart';
import 'package:bonybom_app/core/init/cache/local_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(Initial());

  Future<void> controlSplashStatus() async {
    emit(const Loading());
    await LocalManager.prefrencesInit();
    final isLoggedIn = true;
    if (isLoggedIn) {
      emit(const LoggedIn());
    } else {
      emit(const NotLoggedIn());
    }
  }
}
