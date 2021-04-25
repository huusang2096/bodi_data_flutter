// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordStateDataTearOff {
  const _$ForgotPasswordStateDataTearOff();

  DataForgotPassWord call({bool isLoading = false}) {
    return DataForgotPassWord(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ForgotPasswordStateData = _$ForgotPasswordStateDataTearOff();

/// @nodoc
mixin _$ForgotPasswordStateData {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateDataCopyWith<ForgotPasswordStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateDataCopyWith<$Res> {
  factory $ForgotPasswordStateDataCopyWith(ForgotPasswordStateData value,
          $Res Function(ForgotPasswordStateData) then) =
      _$ForgotPasswordStateDataCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$ForgotPasswordStateDataCopyWithImpl<$Res>
    implements $ForgotPasswordStateDataCopyWith<$Res> {
  _$ForgotPasswordStateDataCopyWithImpl(this._value, this._then);

  final ForgotPasswordStateData _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordStateData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DataForgotPassWordCopyWith<$Res>
    implements $ForgotPasswordStateDataCopyWith<$Res> {
  factory $DataForgotPassWordCopyWith(
          DataForgotPassWord value, $Res Function(DataForgotPassWord) then) =
      _$DataForgotPassWordCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class _$DataForgotPassWordCopyWithImpl<$Res>
    extends _$ForgotPasswordStateDataCopyWithImpl<$Res>
    implements $DataForgotPassWordCopyWith<$Res> {
  _$DataForgotPassWordCopyWithImpl(
      DataForgotPassWord _value, $Res Function(DataForgotPassWord) _then)
      : super(_value, (v) => _then(v as DataForgotPassWord));

  @override
  DataForgotPassWord get _value => super._value as DataForgotPassWord;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(DataForgotPassWord(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$DataForgotPassWord implements DataForgotPassWord {
  const _$DataForgotPassWord({this.isLoading = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ForgotPasswordStateData(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataForgotPassWord &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataForgotPassWordCopyWith<DataForgotPassWord> get copyWith =>
      _$DataForgotPassWordCopyWithImpl<DataForgotPassWord>(this, _$identity);
}

abstract class DataForgotPassWord implements ForgotPasswordStateData {
  const factory DataForgotPassWord({bool isLoading}) = _$DataForgotPassWord;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataForgotPassWordCopyWith<DataForgotPassWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  Initial init(DataForgotPassWord data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataForgotPassWord data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataForgotPassWord data) {
    return Loading(
      data,
    );
  }

  Error error(DataForgotPassWord data) {
    return Error(
      data,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  DataForgotPassWord get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataForgotPassWord data) init,
    required TResult Function(DataForgotPassWord data) loaded,
    required TResult Function(DataForgotPassWord data) loading,
    required TResult Function(DataForgotPassWord data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataForgotPassWord data)? init,
    TResult Function(DataForgotPassWord data)? loaded,
    TResult Function(DataForgotPassWord data)? loading,
    TResult Function(DataForgotPassWord data)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call({DataForgotPassWord data});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataForgotPassWord,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataForgotPassWord data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Initial(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataForgotPassWord,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataForgotPassWord data;

  @override
  String toString() {
    return 'ForgotPasswordState.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataForgotPassWord data) init,
    required TResult Function(DataForgotPassWord data) loaded,
    required TResult Function(DataForgotPassWord data) loading,
    required TResult Function(DataForgotPassWord data) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataForgotPassWord data)? init,
    TResult Function(DataForgotPassWord data)? loaded,
    TResult Function(DataForgotPassWord data)? loading,
    TResult Function(DataForgotPassWord data)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initial implements ForgotPasswordState {
  const factory Initial(DataForgotPassWord data) = _$Initial;

  @override
  DataForgotPassWord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataForgotPassWord data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Loaded(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataForgotPassWord,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataForgotPassWord data;

  @override
  String toString() {
    return 'ForgotPasswordState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataForgotPassWord data) init,
    required TResult Function(DataForgotPassWord data) loaded,
    required TResult Function(DataForgotPassWord data) loading,
    required TResult Function(DataForgotPassWord data) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataForgotPassWord data)? init,
    TResult Function(DataForgotPassWord data)? loaded,
    TResult Function(DataForgotPassWord data)? loading,
    TResult Function(DataForgotPassWord data)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ForgotPasswordState {
  const factory Loaded(DataForgotPassWord data) = _$Loaded;

  @override
  DataForgotPassWord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataForgotPassWord data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Loading(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataForgotPassWord,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataForgotPassWord data;

  @override
  String toString() {
    return 'ForgotPasswordState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataForgotPassWord data) init,
    required TResult Function(DataForgotPassWord data) loaded,
    required TResult Function(DataForgotPassWord data) loading,
    required TResult Function(DataForgotPassWord data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataForgotPassWord data)? init,
    TResult Function(DataForgotPassWord data)? loaded,
    TResult Function(DataForgotPassWord data)? loading,
    TResult Function(DataForgotPassWord data)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ForgotPasswordState {
  const factory Loading(DataForgotPassWord data) = _$Loading;

  @override
  DataForgotPassWord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataForgotPassWord data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Error(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataForgotPassWord,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.data);

  @override
  final DataForgotPassWord data;

  @override
  String toString() {
    return 'ForgotPasswordState.error(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataForgotPassWord data) init,
    required TResult Function(DataForgotPassWord data) loaded,
    required TResult Function(DataForgotPassWord data) loading,
    required TResult Function(DataForgotPassWord data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataForgotPassWord data)? init,
    TResult Function(DataForgotPassWord data)? loaded,
    TResult Function(DataForgotPassWord data)? loading,
    TResult Function(DataForgotPassWord data)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ForgotPasswordState {
  const factory Error(DataForgotPassWord data) = _$Error;

  @override
  DataForgotPassWord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
