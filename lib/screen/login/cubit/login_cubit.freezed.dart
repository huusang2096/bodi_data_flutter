// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginDataTearOff {
  const _$LoginDataTearOff();

  DataLogin call(
      {bool isPasswordObscure = true,
      bool isLoading = false,
      bool isExistLogin = false,
      bool isCallChangeLanguages = false,
      bool isRememberMe = false,
      String? errorText}) {
    return DataLogin(
      isPasswordObscure: isPasswordObscure,
      isLoading: isLoading,
      isExistLogin: isExistLogin,
      isCallChangeLanguages: isCallChangeLanguages,
      isRememberMe: isRememberMe,
      errorText: errorText,
    );
  }
}

/// @nodoc
const $LoginData = _$LoginDataTearOff();

/// @nodoc
mixin _$LoginData {
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isExistLogin => throw _privateConstructorUsedError;
  bool get isCallChangeLanguages => throw _privateConstructorUsedError;
  bool get isRememberMe => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res>;
  $Res call(
      {bool isPasswordObscure,
      bool isLoading,
      bool isExistLogin,
      bool isCallChangeLanguages,
      bool isRememberMe,
      String? errorText});
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res> implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  final LoginData _value;
  // ignore: unused_field
  final $Res Function(LoginData) _then;

  @override
  $Res call({
    Object? isPasswordObscure = freezed,
    Object? isLoading = freezed,
    Object? isExistLogin = freezed,
    Object? isCallChangeLanguages = freezed,
    Object? isRememberMe = freezed,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      isPasswordObscure: isPasswordObscure == freezed
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isExistLogin: isExistLogin == freezed
          ? _value.isExistLogin
          : isExistLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isCallChangeLanguages: isCallChangeLanguages == freezed
          ? _value.isCallChangeLanguages
          : isCallChangeLanguages // ignore: cast_nullable_to_non_nullable
              as bool,
      isRememberMe: isRememberMe == freezed
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $DataLoginCopyWith<$Res> implements $LoginDataCopyWith<$Res> {
  factory $DataLoginCopyWith(DataLogin value, $Res Function(DataLogin) then) =
      _$DataLoginCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPasswordObscure,
      bool isLoading,
      bool isExistLogin,
      bool isCallChangeLanguages,
      bool isRememberMe,
      String? errorText});
}

/// @nodoc
class _$DataLoginCopyWithImpl<$Res> extends _$LoginDataCopyWithImpl<$Res>
    implements $DataLoginCopyWith<$Res> {
  _$DataLoginCopyWithImpl(DataLogin _value, $Res Function(DataLogin) _then)
      : super(_value, (v) => _then(v as DataLogin));

  @override
  DataLogin get _value => super._value as DataLogin;

  @override
  $Res call({
    Object? isPasswordObscure = freezed,
    Object? isLoading = freezed,
    Object? isExistLogin = freezed,
    Object? isCallChangeLanguages = freezed,
    Object? isRememberMe = freezed,
    Object? errorText = freezed,
  }) {
    return _then(DataLogin(
      isPasswordObscure: isPasswordObscure == freezed
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isExistLogin: isExistLogin == freezed
          ? _value.isExistLogin
          : isExistLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isCallChangeLanguages: isCallChangeLanguages == freezed
          ? _value.isCallChangeLanguages
          : isCallChangeLanguages // ignore: cast_nullable_to_non_nullable
              as bool,
      isRememberMe: isRememberMe == freezed
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: errorText == freezed
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$DataLogin implements DataLogin {
  const _$DataLogin(
      {this.isPasswordObscure = true,
      this.isLoading = false,
      this.isExistLogin = false,
      this.isCallChangeLanguages = false,
      this.isRememberMe = false,
      this.errorText});

  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordObscure;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isExistLogin;
  @JsonKey(defaultValue: false)
  @override
  final bool isCallChangeLanguages;
  @JsonKey(defaultValue: false)
  @override
  final bool isRememberMe;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'LoginData(isPasswordObscure: $isPasswordObscure, isLoading: $isLoading, isExistLogin: $isExistLogin, isCallChangeLanguages: $isCallChangeLanguages, isRememberMe: $isRememberMe, errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataLogin &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordObscure, isPasswordObscure)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isExistLogin, isExistLogin) ||
                const DeepCollectionEquality()
                    .equals(other.isExistLogin, isExistLogin)) &&
            (identical(other.isCallChangeLanguages, isCallChangeLanguages) ||
                const DeepCollectionEquality().equals(
                    other.isCallChangeLanguages, isCallChangeLanguages)) &&
            (identical(other.isRememberMe, isRememberMe) ||
                const DeepCollectionEquality()
                    .equals(other.isRememberMe, isRememberMe)) &&
            (identical(other.errorText, errorText) ||
                const DeepCollectionEquality()
                    .equals(other.errorText, errorText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPasswordObscure) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isExistLogin) ^
      const DeepCollectionEquality().hash(isCallChangeLanguages) ^
      const DeepCollectionEquality().hash(isRememberMe) ^
      const DeepCollectionEquality().hash(errorText);

  @JsonKey(ignore: true)
  @override
  $DataLoginCopyWith<DataLogin> get copyWith =>
      _$DataLoginCopyWithImpl<DataLogin>(this, _$identity);
}

abstract class DataLogin implements LoginData {
  const factory DataLogin(
      {bool isPasswordObscure,
      bool isLoading,
      bool isExistLogin,
      bool isCallChangeLanguages,
      bool isRememberMe,
      String? errorText}) = _$DataLogin;

  @override
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isExistLogin => throw _privateConstructorUsedError;
  @override
  bool get isCallChangeLanguages => throw _privateConstructorUsedError;
  @override
  bool get isRememberMe => throw _privateConstructorUsedError;
  @override
  String? get errorText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataLoginCopyWith<DataLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  Initial init(DataLogin data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataLogin data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataLogin data) {
    return Loading(
      data,
    );
  }

  LoginSuccess loginSuccess(DataLogin data) {
    return LoginSuccess(
      data,
    );
  }

  CallChangeLanguages isCallChangeLanguages(DataLogin data) {
    return CallChangeLanguages(
      data,
    );
  }

  RememberMe isRememberMe(DataLogin data) {
    return RememberMe(
      data,
    );
  }

  ShowPassword isShowPassword(DataLogin data) {
    return ShowPassword(
      data,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  DataLogin get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({DataLogin data});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataLogin,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataLogin data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
              as DataLogin,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataLogin data;

  @override
  String toString() {
    return 'LoginState.init(data: $data)';
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
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
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
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial(DataLogin data) = _$Initial;

  @override
  DataLogin get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataLogin data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
              as DataLogin,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataLogin data;

  @override
  String toString() {
    return 'LoginState.loaded(data: $data)';
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
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
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
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements LoginState {
  const factory Loaded(DataLogin data) = _$Loaded;

  @override
  DataLogin get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataLogin data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
              as DataLogin,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataLogin data;

  @override
  String toString() {
    return 'LoginState.loading(data: $data)';
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
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
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
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading(DataLogin data) = _$Loading;

  @override
  DataLogin get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $LoginSuccessCopyWith(
          LoginSuccess value, $Res Function(LoginSuccess) then) =
      _$LoginSuccessCopyWithImpl<$Res>;
  @override
  $Res call({DataLogin data});
}

/// @nodoc
class _$LoginSuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginSuccessCopyWith<$Res> {
  _$LoginSuccessCopyWithImpl(
      LoginSuccess _value, $Res Function(LoginSuccess) _then)
      : super(_value, (v) => _then(v as LoginSuccess));

  @override
  LoginSuccess get _value => super._value as LoginSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(LoginSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataLogin,
    ));
  }
}

/// @nodoc
class _$LoginSuccess implements LoginSuccess {
  const _$LoginSuccess(this.data);

  @override
  final DataLogin data;

  @override
  String toString() {
    return 'LoginState.loginSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoginSuccessCopyWith<LoginSuccess> get copyWith =>
      _$LoginSuccessCopyWithImpl<LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) {
    return loginSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements LoginState {
  const factory LoginSuccess(DataLogin data) = _$LoginSuccess;

  @override
  DataLogin get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoginSuccessCopyWith<LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallChangeLanguagesCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $CallChangeLanguagesCopyWith(
          CallChangeLanguages value, $Res Function(CallChangeLanguages) then) =
      _$CallChangeLanguagesCopyWithImpl<$Res>;
  @override
  $Res call({DataLogin data});
}

/// @nodoc
class _$CallChangeLanguagesCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $CallChangeLanguagesCopyWith<$Res> {
  _$CallChangeLanguagesCopyWithImpl(
      CallChangeLanguages _value, $Res Function(CallChangeLanguages) _then)
      : super(_value, (v) => _then(v as CallChangeLanguages));

  @override
  CallChangeLanguages get _value => super._value as CallChangeLanguages;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(CallChangeLanguages(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataLogin,
    ));
  }
}

/// @nodoc
class _$CallChangeLanguages implements CallChangeLanguages {
  const _$CallChangeLanguages(this.data);

  @override
  final DataLogin data;

  @override
  String toString() {
    return 'LoginState.isCallChangeLanguages(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CallChangeLanguages &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $CallChangeLanguagesCopyWith<CallChangeLanguages> get copyWith =>
      _$CallChangeLanguagesCopyWithImpl<CallChangeLanguages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) {
    return isCallChangeLanguages(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
    required TResult orElse(),
  }) {
    if (isCallChangeLanguages != null) {
      return isCallChangeLanguages(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) {
    return isCallChangeLanguages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) {
    if (isCallChangeLanguages != null) {
      return isCallChangeLanguages(this);
    }
    return orElse();
  }
}

abstract class CallChangeLanguages implements LoginState {
  const factory CallChangeLanguages(DataLogin data) = _$CallChangeLanguages;

  @override
  DataLogin get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CallChangeLanguagesCopyWith<CallChangeLanguages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RememberMeCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $RememberMeCopyWith(
          RememberMe value, $Res Function(RememberMe) then) =
      _$RememberMeCopyWithImpl<$Res>;
  @override
  $Res call({DataLogin data});
}

/// @nodoc
class _$RememberMeCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $RememberMeCopyWith<$Res> {
  _$RememberMeCopyWithImpl(RememberMe _value, $Res Function(RememberMe) _then)
      : super(_value, (v) => _then(v as RememberMe));

  @override
  RememberMe get _value => super._value as RememberMe;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(RememberMe(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataLogin,
    ));
  }
}

/// @nodoc
class _$RememberMe implements RememberMe {
  const _$RememberMe(this.data);

  @override
  final DataLogin data;

  @override
  String toString() {
    return 'LoginState.isRememberMe(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RememberMe &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $RememberMeCopyWith<RememberMe> get copyWith =>
      _$RememberMeCopyWithImpl<RememberMe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) {
    return isRememberMe(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
    required TResult orElse(),
  }) {
    if (isRememberMe != null) {
      return isRememberMe(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) {
    return isRememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) {
    if (isRememberMe != null) {
      return isRememberMe(this);
    }
    return orElse();
  }
}

abstract class RememberMe implements LoginState {
  const factory RememberMe(DataLogin data) = _$RememberMe;

  @override
  DataLogin get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RememberMeCopyWith<RememberMe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPasswordCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $ShowPasswordCopyWith(
          ShowPassword value, $Res Function(ShowPassword) then) =
      _$ShowPasswordCopyWithImpl<$Res>;
  @override
  $Res call({DataLogin data});
}

/// @nodoc
class _$ShowPasswordCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
              as DataLogin,
    ));
  }
}

/// @nodoc
class _$ShowPassword implements ShowPassword {
  const _$ShowPassword(this.data);

  @override
  final DataLogin data;

  @override
  String toString() {
    return 'LoginState.isShowPassword(data: $data)';
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
    required TResult Function(DataLogin data) init,
    required TResult Function(DataLogin data) loaded,
    required TResult Function(DataLogin data) loading,
    required TResult Function(DataLogin data) loginSuccess,
    required TResult Function(DataLogin data) isCallChangeLanguages,
    required TResult Function(DataLogin data) isRememberMe,
    required TResult Function(DataLogin data) isShowPassword,
  }) {
    return isShowPassword(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataLogin data)? init,
    TResult Function(DataLogin data)? loaded,
    TResult Function(DataLogin data)? loading,
    TResult Function(DataLogin data)? loginSuccess,
    TResult Function(DataLogin data)? isCallChangeLanguages,
    TResult Function(DataLogin data)? isRememberMe,
    TResult Function(DataLogin data)? isShowPassword,
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
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(CallChangeLanguages value) isCallChangeLanguages,
    required TResult Function(RememberMe value) isRememberMe,
    required TResult Function(ShowPassword value) isShowPassword,
  }) {
    return isShowPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(CallChangeLanguages value)? isCallChangeLanguages,
    TResult Function(RememberMe value)? isRememberMe,
    TResult Function(ShowPassword value)? isShowPassword,
    required TResult orElse(),
  }) {
    if (isShowPassword != null) {
      return isShowPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements LoginState {
  const factory ShowPassword(DataLogin data) = _$ShowPassword;

  @override
  DataLogin get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShowPasswordCopyWith<ShowPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
