// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'permission_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PermissionStateDataTearOff {
  const _$PermissionStateDataTearOff();

  DataPermission call(
      {bool isLoading = false,
      String name = '',
      int idStyle = 0,
      List<GroupData> listGroupInUser = const [],
      List<InformationPermission> listPermission = const []}) {
    return DataPermission(
      isLoading: isLoading,
      name: name,
      idStyle: idStyle,
      listGroupInUser: listGroupInUser,
      listPermission: listPermission,
    );
  }
}

/// @nodoc
const $PermissionStateData = _$PermissionStateDataTearOff();

/// @nodoc
mixin _$PermissionStateData {
  bool get isLoading => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get idStyle => throw _privateConstructorUsedError;
  List<GroupData> get listGroupInUser => throw _privateConstructorUsedError;
  List<InformationPermission> get listPermission =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermissionStateDataCopyWith<PermissionStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateDataCopyWith<$Res> {
  factory $PermissionStateDataCopyWith(
          PermissionStateData value, $Res Function(PermissionStateData) then) =
      _$PermissionStateDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String name,
      int idStyle,
      List<GroupData> listGroupInUser,
      List<InformationPermission> listPermission});
}

/// @nodoc
class _$PermissionStateDataCopyWithImpl<$Res>
    implements $PermissionStateDataCopyWith<$Res> {
  _$PermissionStateDataCopyWithImpl(this._value, this._then);

  final PermissionStateData _value;
  // ignore: unused_field
  final $Res Function(PermissionStateData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? name = freezed,
    Object? idStyle = freezed,
    Object? listGroupInUser = freezed,
    Object? listPermission = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idStyle: idStyle == freezed
          ? _value.idStyle
          : idStyle // ignore: cast_nullable_to_non_nullable
              as int,
      listGroupInUser: listGroupInUser == freezed
          ? _value.listGroupInUser
          : listGroupInUser // ignore: cast_nullable_to_non_nullable
              as List<GroupData>,
      listPermission: listPermission == freezed
          ? _value.listPermission
          : listPermission // ignore: cast_nullable_to_non_nullable
              as List<InformationPermission>,
    ));
  }
}

/// @nodoc
abstract class $DataPermissionCopyWith<$Res>
    implements $PermissionStateDataCopyWith<$Res> {
  factory $DataPermissionCopyWith(
          DataPermission value, $Res Function(DataPermission) then) =
      _$DataPermissionCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String name,
      int idStyle,
      List<GroupData> listGroupInUser,
      List<InformationPermission> listPermission});
}

/// @nodoc
class _$DataPermissionCopyWithImpl<$Res>
    extends _$PermissionStateDataCopyWithImpl<$Res>
    implements $DataPermissionCopyWith<$Res> {
  _$DataPermissionCopyWithImpl(
      DataPermission _value, $Res Function(DataPermission) _then)
      : super(_value, (v) => _then(v as DataPermission));

  @override
  DataPermission get _value => super._value as DataPermission;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? name = freezed,
    Object? idStyle = freezed,
    Object? listGroupInUser = freezed,
    Object? listPermission = freezed,
  }) {
    return _then(DataPermission(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      idStyle: idStyle == freezed
          ? _value.idStyle
          : idStyle // ignore: cast_nullable_to_non_nullable
              as int,
      listGroupInUser: listGroupInUser == freezed
          ? _value.listGroupInUser
          : listGroupInUser // ignore: cast_nullable_to_non_nullable
              as List<GroupData>,
      listPermission: listPermission == freezed
          ? _value.listPermission
          : listPermission // ignore: cast_nullable_to_non_nullable
              as List<InformationPermission>,
    ));
  }
}

/// @nodoc
class _$DataPermission implements DataPermission {
  const _$DataPermission(
      {this.isLoading = false,
      this.name = '',
      this.idStyle = 0,
      this.listGroupInUser = const [],
      this.listPermission = const []});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: 0)
  @override
  final int idStyle;
  @JsonKey(defaultValue: const [])
  @override
  final List<GroupData> listGroupInUser;
  @JsonKey(defaultValue: const [])
  @override
  final List<InformationPermission> listPermission;

  @override
  String toString() {
    return 'PermissionStateData(isLoading: $isLoading, name: $name, idStyle: $idStyle, listGroupInUser: $listGroupInUser, listPermission: $listPermission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataPermission &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.idStyle, idStyle) ||
                const DeepCollectionEquality()
                    .equals(other.idStyle, idStyle)) &&
            (identical(other.listGroupInUser, listGroupInUser) ||
                const DeepCollectionEquality()
                    .equals(other.listGroupInUser, listGroupInUser)) &&
            (identical(other.listPermission, listPermission) ||
                const DeepCollectionEquality()
                    .equals(other.listPermission, listPermission)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(idStyle) ^
      const DeepCollectionEquality().hash(listGroupInUser) ^
      const DeepCollectionEquality().hash(listPermission);

  @JsonKey(ignore: true)
  @override
  $DataPermissionCopyWith<DataPermission> get copyWith =>
      _$DataPermissionCopyWithImpl<DataPermission>(this, _$identity);
}

abstract class DataPermission implements PermissionStateData {
  const factory DataPermission(
      {bool isLoading,
      String name,
      int idStyle,
      List<GroupData> listGroupInUser,
      List<InformationPermission> listPermission}) = _$DataPermission;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get idStyle => throw _privateConstructorUsedError;
  @override
  List<GroupData> get listGroupInUser => throw _privateConstructorUsedError;
  @override
  List<InformationPermission> get listPermission =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataPermissionCopyWith<DataPermission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PermissionStateTearOff {
  const _$PermissionStateTearOff();

  Initial init(DataPermission data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataPermission data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataPermission data) {
    return Loading(
      data,
    );
  }

  Error error(DataPermission data) {
    return Error(
      data,
    );
  }
}

/// @nodoc
const $PermissionState = _$PermissionStateTearOff();

/// @nodoc
mixin _$PermissionState {
  DataPermission get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataPermission data) init,
    required TResult Function(DataPermission data) loaded,
    required TResult Function(DataPermission data) loading,
    required TResult Function(DataPermission data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataPermission data)? init,
    TResult Function(DataPermission data)? loaded,
    TResult Function(DataPermission data)? loading,
    TResult Function(DataPermission data)? error,
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
  $PermissionStateCopyWith<PermissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateCopyWith<$Res> {
  factory $PermissionStateCopyWith(
          PermissionState value, $Res Function(PermissionState) then) =
      _$PermissionStateCopyWithImpl<$Res>;
  $Res call({DataPermission data});
}

/// @nodoc
class _$PermissionStateCopyWithImpl<$Res>
    implements $PermissionStateCopyWith<$Res> {
  _$PermissionStateCopyWithImpl(this._value, this._then);

  final PermissionState _value;
  // ignore: unused_field
  final $Res Function(PermissionState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataPermission,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $PermissionStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataPermission data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PermissionStateCopyWithImpl<$Res>
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
              as DataPermission,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataPermission data;

  @override
  String toString() {
    return 'PermissionState.init(data: $data)';
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
    required TResult Function(DataPermission data) init,
    required TResult Function(DataPermission data) loaded,
    required TResult Function(DataPermission data) loading,
    required TResult Function(DataPermission data) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataPermission data)? init,
    TResult Function(DataPermission data)? loaded,
    TResult Function(DataPermission data)? loading,
    TResult Function(DataPermission data)? error,
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

abstract class Initial implements PermissionState {
  const factory Initial(DataPermission data) = _$Initial;

  @override
  DataPermission get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $PermissionStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataPermission data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$PermissionStateCopyWithImpl<$Res>
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
              as DataPermission,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataPermission data;

  @override
  String toString() {
    return 'PermissionState.loaded(data: $data)';
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
    required TResult Function(DataPermission data) init,
    required TResult Function(DataPermission data) loaded,
    required TResult Function(DataPermission data) loading,
    required TResult Function(DataPermission data) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataPermission data)? init,
    TResult Function(DataPermission data)? loaded,
    TResult Function(DataPermission data)? loading,
    TResult Function(DataPermission data)? error,
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

abstract class Loaded implements PermissionState {
  const factory Loaded(DataPermission data) = _$Loaded;

  @override
  DataPermission get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $PermissionStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataPermission data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PermissionStateCopyWithImpl<$Res>
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
              as DataPermission,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataPermission data;

  @override
  String toString() {
    return 'PermissionState.loading(data: $data)';
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
    required TResult Function(DataPermission data) init,
    required TResult Function(DataPermission data) loaded,
    required TResult Function(DataPermission data) loading,
    required TResult Function(DataPermission data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataPermission data)? init,
    TResult Function(DataPermission data)? loaded,
    TResult Function(DataPermission data)? loading,
    TResult Function(DataPermission data)? error,
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

abstract class Loading implements PermissionState {
  const factory Loading(DataPermission data) = _$Loading;

  @override
  DataPermission get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> implements $PermissionStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataPermission data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$PermissionStateCopyWithImpl<$Res>
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
              as DataPermission,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.data);

  @override
  final DataPermission data;

  @override
  String toString() {
    return 'PermissionState.error(data: $data)';
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
    required TResult Function(DataPermission data) init,
    required TResult Function(DataPermission data) loaded,
    required TResult Function(DataPermission data) loading,
    required TResult Function(DataPermission data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataPermission data)? init,
    TResult Function(DataPermission data)? loaded,
    TResult Function(DataPermission data)? loading,
    TResult Function(DataPermission data)? error,
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

abstract class Error implements PermissionState {
  const factory Error(DataPermission data) = _$Error;

  @override
  DataPermission get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
