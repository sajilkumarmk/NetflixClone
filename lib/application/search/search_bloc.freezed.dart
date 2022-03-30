// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Search search({required String movieQuery}) {
    return _Search(
      movieQuery: movieQuery,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String movieQuery) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String movieQuery)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String movieQuery)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'SearchEvent.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String movieQuery) search,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String movieQuery)? search,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String movieQuery)? search,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Search value) search,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Search value)? search,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SearchEvent {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String movieQuery});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? movieQuery = freezed,
  }) {
    return _then(_Search(
      movieQuery: movieQuery == freezed
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchEvent.search(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Search &&
            const DeepCollectionEquality()
                .equals(other.movieQuery, movieQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieQuery));

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String movieQuery) search,
  }) {
    return search(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String movieQuery)? search,
  }) {
    return search?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String movieQuery)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search({required String movieQuery}) = _$_Search;

  String get movieQuery;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {required List<SearchDataResult> searchData,
      required List<Downloads> idleData,
      required bool isLoading,
      required bool isError}) {
    return _SearchState(
      searchData: searchData,
      idleData: idleData,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  List<SearchDataResult> get searchData => throw _privateConstructorUsedError;
  List<Downloads> get idleData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<SearchDataResult> searchData,
      List<Downloads> idleData,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchData = freezed,
    Object? idleData = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      searchData: searchData == freezed
          ? _value.searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as List<SearchDataResult>,
      idleData: idleData == freezed
          ? _value.idleData
          : idleData // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SearchDataResult> searchData,
      List<Downloads> idleData,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? searchData = freezed,
    Object? idleData = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_SearchState(
      searchData: searchData == freezed
          ? _value.searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as List<SearchDataResult>,
      idleData: idleData == freezed
          ? _value.idleData
          : idleData // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.searchData,
      required this.idleData,
      required this.isLoading,
      required this.isError});

  @override
  final List<SearchDataResult> searchData;
  @override
  final List<Downloads> idleData;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearchState(searchData: $searchData, idleData: $idleData, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality()
                .equals(other.searchData, searchData) &&
            const DeepCollectionEquality().equals(other.idleData, idleData) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchData),
      const DeepCollectionEquality().hash(idleData),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required List<SearchDataResult> searchData,
      required List<Downloads> idleData,
      required bool isLoading,
      required bool isError}) = _$_SearchState;

  @override
  List<SearchDataResult> get searchData;
  @override
  List<Downloads> get idleData;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
