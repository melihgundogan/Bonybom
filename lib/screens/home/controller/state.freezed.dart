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
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  SuggestionsLoaded suggesstionsLoaded(List<Suggestion> suggestions) {
    return SuggestionsLoaded(
      suggestions,
    );
  }

  SuggestionsNotLoaded suggestionsNotLoaded(Failure failure) {
    return SuggestionsNotLoaded(
      failure,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Suggestion> suggestions) suggesstionsLoaded,
    required TResult Function(Failure failure) suggestionsNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuggestionsLoaded value) suggesstionsLoaded,
    required TResult Function(SuggestionsNotLoaded value) suggestionsNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.initial'));
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
    required TResult Function() loading,
    required TResult Function(List<Suggestion> suggestions) suggesstionsLoaded,
    required TResult Function(Failure failure) suggestionsNotLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
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
    required TResult Function(Loading value) loading,
    required TResult Function(SuggestionsLoaded value) suggesstionsLoaded,
    required TResult Function(SuggestionsNotLoaded value) suggestionsNotLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Suggestion> suggestions) suggesstionsLoaded,
    required TResult Function(Failure failure) suggestionsNotLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuggestionsLoaded value) suggesstionsLoaded,
    required TResult Function(SuggestionsNotLoaded value) suggestionsNotLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HomeState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuggestionsLoadedCopyWith<$Res> {
  factory $SuggestionsLoadedCopyWith(
          SuggestionsLoaded value, $Res Function(SuggestionsLoaded) then) =
      _$SuggestionsLoadedCopyWithImpl<$Res>;
  $Res call({List<Suggestion> suggestions});
}

/// @nodoc
class _$SuggestionsLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $SuggestionsLoadedCopyWith<$Res> {
  _$SuggestionsLoadedCopyWithImpl(
      SuggestionsLoaded _value, $Res Function(SuggestionsLoaded) _then)
      : super(_value, (v) => _then(v as SuggestionsLoaded));

  @override
  SuggestionsLoaded get _value => super._value as SuggestionsLoaded;

  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(SuggestionsLoaded(
      suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Suggestion>,
    ));
  }
}

/// @nodoc

class _$SuggestionsLoaded
    with DiagnosticableTreeMixin
    implements SuggestionsLoaded {
  const _$SuggestionsLoaded(this.suggestions);

  @override
  final List<Suggestion> suggestions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.suggesstionsLoaded(suggestions: $suggestions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.suggesstionsLoaded'))
      ..add(DiagnosticsProperty('suggestions', suggestions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuggestionsLoaded &&
            const DeepCollectionEquality()
                .equals(other.suggestions, suggestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(suggestions));

  @JsonKey(ignore: true)
  @override
  $SuggestionsLoadedCopyWith<SuggestionsLoaded> get copyWith =>
      _$SuggestionsLoadedCopyWithImpl<SuggestionsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Suggestion> suggestions) suggesstionsLoaded,
    required TResult Function(Failure failure) suggestionsNotLoaded,
  }) {
    return suggesstionsLoaded(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
  }) {
    return suggesstionsLoaded?.call(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
    required TResult orElse(),
  }) {
    if (suggesstionsLoaded != null) {
      return suggesstionsLoaded(suggestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuggestionsLoaded value) suggesstionsLoaded,
    required TResult Function(SuggestionsNotLoaded value) suggestionsNotLoaded,
  }) {
    return suggesstionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
  }) {
    return suggesstionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
    required TResult orElse(),
  }) {
    if (suggesstionsLoaded != null) {
      return suggesstionsLoaded(this);
    }
    return orElse();
  }
}

abstract class SuggestionsLoaded implements HomeState {
  const factory SuggestionsLoaded(List<Suggestion> suggestions) =
      _$SuggestionsLoaded;

  List<Suggestion> get suggestions;
  @JsonKey(ignore: true)
  $SuggestionsLoadedCopyWith<SuggestionsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionsNotLoadedCopyWith<$Res> {
  factory $SuggestionsNotLoadedCopyWith(SuggestionsNotLoaded value,
          $Res Function(SuggestionsNotLoaded) then) =
      _$SuggestionsNotLoadedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$SuggestionsNotLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $SuggestionsNotLoadedCopyWith<$Res> {
  _$SuggestionsNotLoadedCopyWithImpl(
      SuggestionsNotLoaded _value, $Res Function(SuggestionsNotLoaded) _then)
      : super(_value, (v) => _then(v as SuggestionsNotLoaded));

  @override
  SuggestionsNotLoaded get _value => super._value as SuggestionsNotLoaded;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(SuggestionsNotLoaded(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SuggestionsNotLoaded
    with DiagnosticableTreeMixin
    implements SuggestionsNotLoaded {
  const _$SuggestionsNotLoaded(this.failure);

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.suggestionsNotLoaded(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.suggestionsNotLoaded'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuggestionsNotLoaded &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $SuggestionsNotLoadedCopyWith<SuggestionsNotLoaded> get copyWith =>
      _$SuggestionsNotLoadedCopyWithImpl<SuggestionsNotLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Suggestion> suggestions) suggesstionsLoaded,
    required TResult Function(Failure failure) suggestionsNotLoaded,
  }) {
    return suggestionsNotLoaded(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
  }) {
    return suggestionsNotLoaded?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Suggestion> suggestions)? suggesstionsLoaded,
    TResult Function(Failure failure)? suggestionsNotLoaded,
    required TResult orElse(),
  }) {
    if (suggestionsNotLoaded != null) {
      return suggestionsNotLoaded(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SuggestionsLoaded value) suggesstionsLoaded,
    required TResult Function(SuggestionsNotLoaded value) suggestionsNotLoaded,
  }) {
    return suggestionsNotLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
  }) {
    return suggestionsNotLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SuggestionsLoaded value)? suggesstionsLoaded,
    TResult Function(SuggestionsNotLoaded value)? suggestionsNotLoaded,
    required TResult orElse(),
  }) {
    if (suggestionsNotLoaded != null) {
      return suggestionsNotLoaded(this);
    }
    return orElse();
  }
}

abstract class SuggestionsNotLoaded implements HomeState {
  const factory SuggestionsNotLoaded(Failure failure) = _$SuggestionsNotLoaded;

  Failure get failure;
  @JsonKey(ignore: true)
  $SuggestionsNotLoadedCopyWith<SuggestionsNotLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
