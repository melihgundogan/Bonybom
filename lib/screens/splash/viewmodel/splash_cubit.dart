import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());
}

abstract class SplashState {}

class SplashInitial extends SplashState {}
