import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authLoadingProcess() = AuthLoadingProcess;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unAuthenticated() = Unauthenticated;
}
