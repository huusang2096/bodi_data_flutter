// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuditDataTearOff {
  const _$AuditDataTearOff();

  DataAudit call(
      {dynamic isLoading = false,
      List<AuditSessionData> listAuditSession = const [],
      List<StyleAudit> listStyleAudit = const [],
      List<ProfileAudit> listProfileAudit = const [],
      String sessionSearch = '',
      bool getDataInitial = true}) {
    return DataAudit(
      isLoading: isLoading,
      listAuditSession: listAuditSession,
      listStyleAudit: listStyleAudit,
      listProfileAudit: listProfileAudit,
      sessionSearch: sessionSearch,
      getDataInitial: getDataInitial,
    );
  }
}

/// @nodoc
const $AuditData = _$AuditDataTearOff();

/// @nodoc
mixin _$AuditData {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<AuditSessionData> get listAuditSession =>
      throw _privateConstructorUsedError;
  List<StyleAudit> get listStyleAudit => throw _privateConstructorUsedError;
  List<ProfileAudit> get listProfileAudit => throw _privateConstructorUsedError;
  String get sessionSearch => throw _privateConstructorUsedError;
  bool get getDataInitial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuditDataCopyWith<AuditData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditDataCopyWith<$Res> {
  factory $AuditDataCopyWith(AuditData value, $Res Function(AuditData) then) =
      _$AuditDataCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      List<AuditSessionData> listAuditSession,
      List<StyleAudit> listStyleAudit,
      List<ProfileAudit> listProfileAudit,
      String sessionSearch,
      bool getDataInitial});
}

/// @nodoc
class _$AuditDataCopyWithImpl<$Res> implements $AuditDataCopyWith<$Res> {
  _$AuditDataCopyWithImpl(this._value, this._then);

  final AuditData _value;
  // ignore: unused_field
  final $Res Function(AuditData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listAuditSession = freezed,
    Object? listStyleAudit = freezed,
    Object? listProfileAudit = freezed,
    Object? sessionSearch = freezed,
    Object? getDataInitial = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listAuditSession: listAuditSession == freezed
          ? _value.listAuditSession
          : listAuditSession // ignore: cast_nullable_to_non_nullable
              as List<AuditSessionData>,
      listStyleAudit: listStyleAudit == freezed
          ? _value.listStyleAudit
          : listStyleAudit // ignore: cast_nullable_to_non_nullable
              as List<StyleAudit>,
      listProfileAudit: listProfileAudit == freezed
          ? _value.listProfileAudit
          : listProfileAudit // ignore: cast_nullable_to_non_nullable
              as List<ProfileAudit>,
      sessionSearch: sessionSearch == freezed
          ? _value.sessionSearch
          : sessionSearch // ignore: cast_nullable_to_non_nullable
              as String,
      getDataInitial: getDataInitial == freezed
          ? _value.getDataInitial
          : getDataInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DataAuditCopyWith<$Res> implements $AuditDataCopyWith<$Res> {
  factory $DataAuditCopyWith(DataAudit value, $Res Function(DataAudit) then) =
      _$DataAuditCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      List<AuditSessionData> listAuditSession,
      List<StyleAudit> listStyleAudit,
      List<ProfileAudit> listProfileAudit,
      String sessionSearch,
      bool getDataInitial});
}

/// @nodoc
class _$DataAuditCopyWithImpl<$Res> extends _$AuditDataCopyWithImpl<$Res>
    implements $DataAuditCopyWith<$Res> {
  _$DataAuditCopyWithImpl(DataAudit _value, $Res Function(DataAudit) _then)
      : super(_value, (v) => _then(v as DataAudit));

  @override
  DataAudit get _value => super._value as DataAudit;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listAuditSession = freezed,
    Object? listStyleAudit = freezed,
    Object? listProfileAudit = freezed,
    Object? sessionSearch = freezed,
    Object? getDataInitial = freezed,
  }) {
    return _then(DataAudit(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      listAuditSession: listAuditSession == freezed
          ? _value.listAuditSession
          : listAuditSession // ignore: cast_nullable_to_non_nullable
              as List<AuditSessionData>,
      listStyleAudit: listStyleAudit == freezed
          ? _value.listStyleAudit
          : listStyleAudit // ignore: cast_nullable_to_non_nullable
              as List<StyleAudit>,
      listProfileAudit: listProfileAudit == freezed
          ? _value.listProfileAudit
          : listProfileAudit // ignore: cast_nullable_to_non_nullable
              as List<ProfileAudit>,
      sessionSearch: sessionSearch == freezed
          ? _value.sessionSearch
          : sessionSearch // ignore: cast_nullable_to_non_nullable
              as String,
      getDataInitial: getDataInitial == freezed
          ? _value.getDataInitial
          : getDataInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$DataAudit implements DataAudit {
  const _$DataAudit(
      {this.isLoading = false,
      this.listAuditSession = const [],
      this.listStyleAudit = const [],
      this.listProfileAudit = const [],
      this.sessionSearch = '',
      this.getDataInitial = true});

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: const [])
  @override
  final List<AuditSessionData> listAuditSession;
  @JsonKey(defaultValue: const [])
  @override
  final List<StyleAudit> listStyleAudit;
  @JsonKey(defaultValue: const [])
  @override
  final List<ProfileAudit> listProfileAudit;
  @JsonKey(defaultValue: '')
  @override
  final String sessionSearch;
  @JsonKey(defaultValue: true)
  @override
  final bool getDataInitial;

  @override
  String toString() {
    return 'AuditData(isLoading: $isLoading, listAuditSession: $listAuditSession, listStyleAudit: $listStyleAudit, listProfileAudit: $listProfileAudit, sessionSearch: $sessionSearch, getDataInitial: $getDataInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataAudit &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.listAuditSession, listAuditSession) ||
                const DeepCollectionEquality()
                    .equals(other.listAuditSession, listAuditSession)) &&
            (identical(other.listStyleAudit, listStyleAudit) ||
                const DeepCollectionEquality()
                    .equals(other.listStyleAudit, listStyleAudit)) &&
            (identical(other.listProfileAudit, listProfileAudit) ||
                const DeepCollectionEquality()
                    .equals(other.listProfileAudit, listProfileAudit)) &&
            (identical(other.sessionSearch, sessionSearch) ||
                const DeepCollectionEquality()
                    .equals(other.sessionSearch, sessionSearch)) &&
            (identical(other.getDataInitial, getDataInitial) ||
                const DeepCollectionEquality()
                    .equals(other.getDataInitial, getDataInitial)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(listAuditSession) ^
      const DeepCollectionEquality().hash(listStyleAudit) ^
      const DeepCollectionEquality().hash(listProfileAudit) ^
      const DeepCollectionEquality().hash(sessionSearch) ^
      const DeepCollectionEquality().hash(getDataInitial);

  @JsonKey(ignore: true)
  @override
  $DataAuditCopyWith<DataAudit> get copyWith =>
      _$DataAuditCopyWithImpl<DataAudit>(this, _$identity);
}

abstract class DataAudit implements AuditData {
  const factory DataAudit(
      {dynamic isLoading,
      List<AuditSessionData> listAuditSession,
      List<StyleAudit> listStyleAudit,
      List<ProfileAudit> listProfileAudit,
      String sessionSearch,
      bool getDataInitial}) = _$DataAudit;

  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  List<AuditSessionData> get listAuditSession =>
      throw _privateConstructorUsedError;
  @override
  List<StyleAudit> get listStyleAudit => throw _privateConstructorUsedError;
  @override
  List<ProfileAudit> get listProfileAudit => throw _privateConstructorUsedError;
  @override
  String get sessionSearch => throw _privateConstructorUsedError;
  @override
  bool get getDataInitial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataAuditCopyWith<DataAudit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuditStateTearOff {
  const _$AuditStateTearOff();

  Initial init(DataAudit data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataAudit data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataAudit data) {
    return Loading(
      data,
    );
  }

  Error error(DataAudit data) {
    return Error(
      data,
    );
  }
}

/// @nodoc
const $AuditState = _$AuditStateTearOff();

/// @nodoc
mixin _$AuditState {
  DataAudit get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataAudit data) init,
    required TResult Function(DataAudit data) loaded,
    required TResult Function(DataAudit data) loading,
    required TResult Function(DataAudit data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAudit data)? init,
    TResult Function(DataAudit data)? loaded,
    TResult Function(DataAudit data)? loading,
    TResult Function(DataAudit data)? error,
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
  $AuditStateCopyWith<AuditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditStateCopyWith<$Res> {
  factory $AuditStateCopyWith(
          AuditState value, $Res Function(AuditState) then) =
      _$AuditStateCopyWithImpl<$Res>;
  $Res call({DataAudit data});
}

/// @nodoc
class _$AuditStateCopyWithImpl<$Res> implements $AuditStateCopyWith<$Res> {
  _$AuditStateCopyWithImpl(this._value, this._then);

  final AuditState _value;
  // ignore: unused_field
  final $Res Function(AuditState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataAudit,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $AuditStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataAudit data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuditStateCopyWithImpl<$Res>
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
              as DataAudit,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataAudit data;

  @override
  String toString() {
    return 'AuditState.init(data: $data)';
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
    required TResult Function(DataAudit data) init,
    required TResult Function(DataAudit data) loaded,
    required TResult Function(DataAudit data) loading,
    required TResult Function(DataAudit data) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAudit data)? init,
    TResult Function(DataAudit data)? loaded,
    TResult Function(DataAudit data)? loading,
    TResult Function(DataAudit data)? error,
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

abstract class Initial implements AuditState {
  const factory Initial(DataAudit data) = _$Initial;

  @override
  DataAudit get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $AuditStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataAudit data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$AuditStateCopyWithImpl<$Res>
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
              as DataAudit,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataAudit data;

  @override
  String toString() {
    return 'AuditState.loaded(data: $data)';
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
    required TResult Function(DataAudit data) init,
    required TResult Function(DataAudit data) loaded,
    required TResult Function(DataAudit data) loading,
    required TResult Function(DataAudit data) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAudit data)? init,
    TResult Function(DataAudit data)? loaded,
    TResult Function(DataAudit data)? loading,
    TResult Function(DataAudit data)? error,
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

abstract class Loaded implements AuditState {
  const factory Loaded(DataAudit data) = _$Loaded;

  @override
  DataAudit get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $AuditStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataAudit data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$AuditStateCopyWithImpl<$Res>
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
              as DataAudit,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataAudit data;

  @override
  String toString() {
    return 'AuditState.loading(data: $data)';
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
    required TResult Function(DataAudit data) init,
    required TResult Function(DataAudit data) loaded,
    required TResult Function(DataAudit data) loading,
    required TResult Function(DataAudit data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAudit data)? init,
    TResult Function(DataAudit data)? loaded,
    TResult Function(DataAudit data)? loading,
    TResult Function(DataAudit data)? error,
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

abstract class Loading implements AuditState {
  const factory Loading(DataAudit data) = _$Loading;

  @override
  DataAudit get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> implements $AuditStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataAudit data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AuditStateCopyWithImpl<$Res>
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
              as DataAudit,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.data);

  @override
  final DataAudit data;

  @override
  String toString() {
    return 'AuditState.error(data: $data)';
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
    required TResult Function(DataAudit data) init,
    required TResult Function(DataAudit data) loaded,
    required TResult Function(DataAudit data) loading,
    required TResult Function(DataAudit data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAudit data)? init,
    TResult Function(DataAudit data)? loaded,
    TResult Function(DataAudit data)? loading,
    TResult Function(DataAudit data)? error,
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

abstract class Error implements AuditState {
  const factory Error(DataAudit data) = _$Error;

  @override
  DataAudit get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
