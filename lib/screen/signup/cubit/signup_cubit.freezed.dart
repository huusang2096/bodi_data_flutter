// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupDataTearOff {
  const _$SignupDataTearOff();

  DataSignup call(
      {bool isPasswordObscure = true,
      bool isPasswordObscureConfirm = true,
      bool isLoading = false,
      String? errorText}) {
    return DataSignup(
      isPasswordObscure: isPasswordObscure,
      isPasswordObscureConfirm: isPasswordObscureConfirm,
      isLoading: isLoading,
      errorText: errorText,
    );
  }
}

/// @nodoc
const $SignupData = _$SignupDataTearOff();

/// @nodoc
mixin _$SignupData {
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  bool get isPasswordObscureConfirm => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupDataCopyWith<SignupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupDataCopyWith<$Res> {
  factory $SignupDataCopyWith(
          SignupData value, $Res Function(SignupData) then) =
      _$SignupDataCopyWithImpl<$Res>;
  $Res call(
      {bool isPasswordObscure,
      bool isPasswordObscureConfirm,
      bool isLoading,
      String? errorText});
}

/// @nodoc
class _$SignupDataCopyWithImpl<$Res> implements $SignupDataCopyWith<$Res> {
  _$SignupDataCopyWithImpl(this._value, this._then);

  final SignupData _value;
  // ignore: unused_field
  final $Res Function(SignupData) _then;

  @override
  $Res call({
    Object? isPasswordObscure = freezed,
    Object? isPasswordObscureConfirm = freezed,
    Object? isLoading = freezed,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      isPasswordObscure: isPasswordObscure == freezed
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscureConfirm: isPasswordObscureConfirm == freezed
          ? _value.isPasswordObscureConfirm
          : isPasswordObscureConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $DataSignupCopyWith<$Res> implements $SignupDataCopyWith<$Res> {
  factory $DataSignupCopyWith(
          DataSignup value, $Res Function(DataSignup) then) =
      _$DataSignupCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPasswordObscure,
      bool isPasswordObscureConfirm,
      bool isLoading,
      String? errorText});
}

/// @nodoc
class _$DataSignupCopyWithImpl<$Res> extends _$SignupDataCopyWithImpl<$Res>
    implements $DataSignupCopyWith<$Res> {
  _$DataSignupCopyWithImpl(DataSignup _value, $Res Function(DataSignup) _then)
      : super(_value, (v) => _then(v as DataSignup));

  @override
  DataSignup get _value => super._value as DataSignup;

  @override
  $Res call({
    Object? isPasswordObscure = freezed,
    Object? isPasswordObscureConfirm = freezed,
    Object? isLoading = freezed,
    Object? errorText = freezed,
  }) {
    return _then(DataSignup(
      isPasswordObscure: isPasswordObscure == freezed
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordObscureConfirm: isPasswordObscureConfirm == freezed
          ? _value.isPasswordObscureConfirm
          : isPasswordObscureConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$DataSignup implements DataSignup {
  const _$DataSignup(
      {this.isPasswordObscure = true,
      this.isPasswordObscureConfirm = true,
      this.isLoading = false,
      this.errorText});

  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordObscure;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordObscureConfirm;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'SignupData(isPasswordObscure: $isPasswordObscure, isPasswordObscureConfirm: $isPasswordObscureConfirm, isLoading: $isLoading, errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataSignup &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordObscure, isPasswordObscure)) &&
            (identical(
                    other.isPasswordObscureConfirm, isPasswordObscureConfirm) ||
                const DeepCollectionEquality().equals(
                    other.isPasswordObscureConfirm,
                    isPasswordObscureConfirm)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.errorText, errorText) ||
                const DeepCollectionEquality()
                    .equals(other.errorText, errorText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPasswordObscure) ^
      const DeepCollectionEquality().hash(isPasswordObscureConfirm) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(errorText);

  @JsonKey(ignore: true)
  @override
  $DataSignupCopyWith<DataSignup> get copyWith =>
      _$DataSignupCopyWithImpl<DataSignup>(this, _$identity);
}

abstract class DataSignup implements SignupData {
  const factory DataSignup(
      {bool isPasswordObscure,
      bool isPasswordObscureConfirm,
      bool isLoading,
      String? errorText}) = _$DataSignup;

  @override
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  @override
  bool get isPasswordObscureConfirm => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String? get errorText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataSignupCopyWith<DataSignup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

  Initial initial(DataSignup data) {
    return Initial(
      data,
    );
  }

  Loading loading(DataSignup data) {
    return Loading(
      data,
    );
  }

  Loaded loaded(DataSignup data) {
    return Loaded(
      data,
    );
  }

  ShowPassword isShowPassword(DataSignup data) {
    return ShowPassword(
      data,
    );
  }

  ShowPasswordConfirm isShowPasswordConfirm(DataSignup data) {
    return ShowPasswordConfirm(
      data,
    );
  }

  SignupSuccess signupSuccess(DataSignup data) {
    return SignupSuccess(
      data,
    );
  }

  SignUpError error(DataSignup data) {
    return SignUpError(
      data,
    );
  }
}

/// @nodoc
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  DataSignup get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call({DataSignup data});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSignup,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataSignup data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
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
              as DataSignup,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataSignup data;

  @override
  String toString() {
    return 'SignupState.initial(data: $data)';
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
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignupState {
  const factory Initial(DataSignup data) = _$Initial;

  @override
  DataSignup get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataSignup data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
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
              as DataSignup,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataSignup data;

  @override
  String toString() {
    return 'SignupState.loading(data: $data)';
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
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SignupState {
  const factory Loading(DataSignup data) = _$Loading;

  @override
  DataSignup get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataSignup data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
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
              as DataSignup,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataSignup data;

  @override
  String toString() {
    return 'SignupState.loaded(data: $data)';
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
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements SignupState {
  const factory Loaded(DataSignup data) = _$Loaded;

  @override
  DataSignup get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPasswordCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory $ShowPasswordCopyWith(
          ShowPassword value, $Res Function(ShowPassword) then) =
      _$ShowPasswordCopyWithImpl<$Res>;
  @override
  $Res call({DataSignup data});
}

/// @nodoc
class _$ShowPasswordCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements $ShowPasswordCopyWith<$Res> {
  _$ShowPasswordCopyWithImpl(
      ShowPassword _value, $Res Function(ShowPassword) _then)
      : super(_value, (v) => _then(v as ShowPassword));

  @override
  ShowPassword get _value => super._value as ShowPassword;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ShowPassword(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSignup,
    ));
  }
}

/// @nodoc
class _$ShowPassword implements ShowPassword {
  const _$ShowPassword(this.data);

  @override
  final DataSignup data;

  @override
  String toString() {
    return 'SignupState.isShowPassword(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowPassword &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ShowPasswordCopyWith<ShowPassword> get copyWith =>
      _$ShowPasswordCopyWithImpl<ShowPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) {
    return isShowPassword(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
    required TResult orElse(),
  }) {
    if (isShowPassword != null) {
      return isShowPassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) {
    return isShowPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (isShowPassword != null) {
      return isShowPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements SignupState {
  const factory ShowPassword(DataSignup data) = _$ShowPassword;

  @override
  DataSignup get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShowPasswordCopyWith<ShowPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPasswordConfirmCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory $ShowPasswordConfirmCopyWith(
          ShowPasswordConfirm value, $Res Function(ShowPasswordConfirm) then) =
      _$ShowPasswordConfirmCopyWithImpl<$Res>;
  @override
  $Res call({DataSignup data});
}

/// @nodoc
class _$ShowPasswordConfirmCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res>
    implements $ShowPasswordConfirmCopyWith<$Res> {
  _$ShowPasswordConfirmCopyWithImpl(
      ShowPasswordConfirm _value, $Res Function(ShowPasswordConfirm) _then)
      : super(_value, (v) => _then(v as ShowPasswordConfirm));

  @override
  ShowPasswordConfirm get _value => super._value as ShowPasswordConfirm;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ShowPasswordConfirm(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSignup,
    ));
  }
}

/// @nodoc
class _$ShowPasswordConfirm implements ShowPasswordConfirm {
  const _$ShowPasswordConfirm(this.data);

  @override
  final DataSignup data;

  @override
  String toString() {
    return 'SignupState.isShowPasswordConfirm(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowPasswordConfirm &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ShowPasswordConfirmCopyWith<ShowPasswordConfirm> get copyWith =>
      _$ShowPasswordConfirmCopyWithImpl<ShowPasswordConfirm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) {
    return isShowPasswordConfirm(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
    required TResult orElse(),
  }) {
    if (isShowPasswordConfirm != null) {
      return isShowPasswordConfirm(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) {
    return isShowPasswordConfirm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (isShowPasswordConfirm != null) {
      return isShowPasswordConfirm(this);
    }
    return orElse();
  }
}

abstract class ShowPasswordConfirm implements SignupState {
  const factory ShowPasswordConfirm(DataSignup data) = _$ShowPasswordConfirm;

  @override
  DataSignup get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShowPasswordConfirmCopyWith<ShowPasswordConfirm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupSuccessCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory $SignupSuccessCopyWith(
          SignupSuccess value, $Res Function(SignupSuccess) then) =
      _$SignupSuccessCopyWithImpl<$Res>;
  @override
  $Res call({DataSignup data});
}

/// @nodoc
class _$SignupSuccessCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements $SignupSuccessCopyWith<$Res> {
  _$SignupSuccessCopyWithImpl(
      SignupSuccess _value, $Res Function(SignupSuccess) _then)
      : super(_value, (v) => _then(v as SignupSuccess));

  @override
  SignupSuccess get _value => super._value as SignupSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SignupSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSignup,
    ));
  }
}

/// @nodoc
class _$SignupSuccess implements SignupSuccess {
  const _$SignupSuccess(this.data);

  @override
  final DataSignup data;

  @override
  String toString() {
    return 'SignupState.signupSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignupSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SignupSuccessCopyWith<SignupSuccess> get copyWith =>
      _$SignupSuccessCopyWithImpl<SignupSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) {
    return signupSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess implements SignupState {
  const factory SignupSuccess(DataSignup data) = _$SignupSuccess;

  @override
  DataSignup get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SignupSuccessCopyWith<SignupSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataSignup data});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SignUpError(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSignup,
    ));
  }
}

/// @nodoc
class _$SignUpError implements SignUpError {
  const _$SignUpError(this.data);

  @override
  final DataSignup data;

  @override
  String toString() {
    return 'SignupState.error(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSignup data) initial,
    required TResult Function(DataSignup data) loading,
    required TResult Function(DataSignup data) loaded,
    required TResult Function(DataSignup data) isShowPassword,
    required TResult Function(DataSignup data) isShowPasswordConfirm,
    required TResult Function(DataSignup data) signupSuccess,
    required TResult Function(DataSignup data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSignup data)? initial,
    TResult Function(DataSignup data)? loading,
    TResult Function(DataSignup data)? loaded,
    TResult Function(DataSignup data)? isShowPassword,
    TResult Function(DataSignup data)? isShowPasswordConfirm,
    TResult Function(DataSignup data)? signupSuccess,
    TResult Function(DataSignup data)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ShowPassword value) isShowPassword,
    required TResult Function(ShowPasswordConfirm value) isShowPasswordConfirm,
    required TResult Function(SignupSuccess value) signupSuccess,
    required TResult Function(SignUpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ShowPassword value)? isShowPassword,
    TResult Function(ShowPasswordConfirm value)? isShowPasswordConfirm,
    TResult Function(SignupSuccess value)? signupSuccess,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignupState {
  const factory SignUpError(DataSignup data) = _$SignUpError;

  @override
  DataSignup get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      throw _privateConstructorUsedError;
}
