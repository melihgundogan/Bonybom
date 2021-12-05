import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = Initial;
  const factory SplashState.loading() = Loading;
  const factory SplashState.notLoggedIn() = NotLoggedIn;
  const factory SplashState.loggedIn() = LoggedIn;
}
