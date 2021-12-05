// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  AuthLoadingProcess authLoadingProcess() {
    return const AuthLoadingProcess();
  }

  Authenticated authenticated() {
    return const Authenticated();
  }

  Unauthenticated unAuthenticated() {
    return const Unauthenticated();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authLoadingProcess,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoadingProcess value) authLoadingProcess,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authLoadingProcess,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoadingProcess value) authLoadingProcess,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unAuthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthLoadingProcessCopyWith<$Res> {
  factory $AuthLoadingProcessCopyWith(
          AuthLoadingProcess value, $Res Function(AuthLoadingProcess) then) =
      _$AuthLoadingProcessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingProcessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingProcessCopyWith<$Res> {
  _$AuthLoadingProcessCopyWithImpl(
      AuthLoadingProcess _value, $Res Function(AuthLoadingProcess) _then)
      : super(_value, (v) => _then(v as AuthLoadingProcess));

  @override
  AuthLoadingProcess get _value => super._value as AuthLoadingProcess;
}

/// @nodoc

class _$AuthLoadingProcess
    with DiagnosticableTreeMixin
    implements AuthLoadingProcess {
  const _$AuthLoadingProcess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authLoadingProcess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authLoadingProcess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoadingProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authLoadingProcess,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return authLoadingProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
  }) {
    return authLoadingProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authLoadingProcess != null) {
      return authLoadingProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoadingProcess value) authLoadingProcess,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unAuthenticated,
  }) {
    return authLoadingProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
  }) {
    return authLoadingProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authLoadingProcess != null) {
      return authLoadingProcess(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingProcess implements AuthState {
  const factory AuthLoadingProcess() = _$AuthLoadingProcess;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc

class _$Authenticated with DiagnosticableTreeMixin implements Authenticated {
  const _$Authenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.authenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authLoadingProcess,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoadingProcess value) authLoadingProcess,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc

class _$Unauthenticated
    with DiagnosticableTreeMixin
    implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unAuthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.unAuthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authLoadingProcess,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authLoadingProcess,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthLoadingProcess value) authLoadingProcess,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthLoadingProcess value)? authLoadingProcess,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}
