// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadsEventTearOff {
  const _$DownloadsEventTearOff();

  _GetPosterCard getPosterCard() {
    return const _GetPosterCard();
  }
}

/// @nodoc
const $DownloadsEvent = _$DownloadsEventTearOff();

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosterCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosterCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosterCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosterCard value) getPosterCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosterCard value)? getPosterCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosterCard value)? getPosterCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  final DownloadsEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadsEvent) _then;
}

/// @nodoc
abstract class _$GetPosterCardCopyWith<$Res> {
  factory _$GetPosterCardCopyWith(
          _GetPosterCard value, $Res Function(_GetPosterCard) then) =
      __$GetPosterCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPosterCardCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res>
    implements _$GetPosterCardCopyWith<$Res> {
  __$GetPosterCardCopyWithImpl(
      _GetPosterCard _value, $Res Function(_GetPosterCard) _then)
      : super(_value, (v) => _then(v as _GetPosterCard));

  @override
  _GetPosterCard get _value => super._value as _GetPosterCard;
}

/// @nodoc

class _$_GetPosterCard implements _GetPosterCard {
  const _$_GetPosterCard();

  @override
  String toString() {
    return 'DownloadsEvent.getPosterCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetPosterCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPosterCard,
  }) {
    return getPosterCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPosterCard,
  }) {
    return getPosterCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPosterCard,
    required TResult orElse(),
  }) {
    if (getPosterCard != null) {
      return getPosterCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosterCard value) getPosterCard,
  }) {
    return getPosterCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPosterCard value)? getPosterCard,
  }) {
    return getPosterCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosterCard value)? getPosterCard,
    required TResult orElse(),
  }) {
    if (getPosterCard != null) {
      return getPosterCard(this);
    }
    return orElse();
  }
}

abstract class _GetPosterCard implements DownloadsEvent {
  const factory _GetPosterCard() = _$_GetPosterCard;
}

/// @nodoc
class _$DownloadsStateTearOff {
  const _$DownloadsStateTearOff();

  _DownloadsState call(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<MainFailures, List<Downloads>>>
          failureOrSuccessOption}) {
    return _DownloadsState(
      isLoading: isLoading,
      downloads: downloads,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $DownloadsState = _$DownloadsStateTearOff();

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<Downloads>>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailures, List<Downloads>>> failureOrSuccessOption});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  final DownloadsState _value;
  // ignore: unused_field
  final $Res Function(DownloadsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadsStateCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$DownloadsStateCopyWith(
          _DownloadsState value, $Res Function(_DownloadsState) then) =
      __$DownloadsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailures, List<Downloads>>> failureOrSuccessOption});
}

/// @nodoc
class __$DownloadsStateCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res>
    implements _$DownloadsStateCopyWith<$Res> {
  __$DownloadsStateCopyWithImpl(
      _DownloadsState _value, $Res Function(_DownloadsState) _then)
      : super(_value, (v) => _then(v as _DownloadsState));

  @override
  _DownloadsState get _value => super._value as _DownloadsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_DownloadsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadsState implements _DownloadsState {
  const _$_DownloadsState(
      {required this.isLoading,
      required this.downloads,
      required this.failureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Downloads> downloads;
  @override
  final Option<Either<MainFailures, List<Downloads>>> failureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.downloads, downloads) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(downloads),
      const DeepCollectionEquality().hash(failureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$DownloadsStateCopyWith<_DownloadsState> get copyWith =>
      __$DownloadsStateCopyWithImpl<_DownloadsState>(this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<MainFailures, List<Downloads>>>
          failureOrSuccessOption}) = _$_DownloadsState;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downloads;
  @override
  Option<Either<MainFailures, List<Downloads>>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$DownloadsStateCopyWith<_DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}
