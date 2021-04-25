// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audit_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuditDetailDataTearOff {
  const _$AuditDetailDataTearOff();

  DataAuditDetail call(
      {int auditId = 0,
      AuditSessionDetailResponse? auditSessionDetailResponse,
      List<AuditRecordRequest> auditRecordRequests = const [],
      List<Style> listAllStyle = const [],
      List<ProfileModel> listAllProfile = const [],
      List<StyleAudit> listAuditStyle = const [],
      List<ProfileAudit> listAuditProfile = const [],
      bool isLoading = false}) {
    return DataAuditDetail(
      auditId: auditId,
      auditSessionDetailResponse: auditSessionDetailResponse,
      auditRecordRequests: auditRecordRequests,
      listAllStyle: listAllStyle,
      listAllProfile: listAllProfile,
      listAuditStyle: listAuditStyle,
      listAuditProfile: listAuditProfile,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AuditDetailData = _$AuditDetailDataTearOff();

/// @nodoc
mixin _$AuditDetailData {
  int get auditId => throw _privateConstructorUsedError;
  AuditSessionDetailResponse? get auditSessionDetailResponse =>
      throw _privateConstructorUsedError;
  List<AuditRecordRequest> get auditRecordRequests =>
      throw _privateConstructorUsedError;
  List<Style> get listAllStyle => throw _privateConstructorUsedError;
  List<ProfileModel> get listAllProfile => throw _privateConstructorUsedError;
  List<StyleAudit> get listAuditStyle => throw _privateConstructorUsedError;
  List<ProfileAudit> get listAuditProfile => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuditDetailDataCopyWith<AuditDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditDetailDataCopyWith<$Res> {
  factory $AuditDetailDataCopyWith(
          AuditDetailData value, $Res Function(AuditDetailData) then) =
      _$AuditDetailDataCopyWithImpl<$Res>;
  $Res call(
      {int auditId,
      AuditSessionDetailResponse? auditSessionDetailResponse,
      List<AuditRecordRequest> auditRecordRequests,
      List<Style> listAllStyle,
      List<ProfileModel> listAllProfile,
      List<StyleAudit> listAuditStyle,
      List<ProfileAudit> listAuditProfile,
      bool isLoading});
}

/// @nodoc
class _$AuditDetailDataCopyWithImpl<$Res>
    implements $AuditDetailDataCopyWith<$Res> {
  _$AuditDetailDataCopyWithImpl(this._value, this._then);

  final AuditDetailData _value;
  // ignore: unused_field
  final $Res Function(AuditDetailData) _then;

  @override
  $Res call({
    Object? auditId = freezed,
    Object? auditSessionDetailResponse = freezed,
    Object? auditRecordRequests = freezed,
    Object? listAllStyle = freezed,
    Object? listAllProfile = freezed,
    Object? listAuditStyle = freezed,
    Object? listAuditProfile = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      auditId: auditId == freezed
          ? _value.auditId
          : auditId // ignore: cast_nullable_to_non_nullable
              as int,
      auditSessionDetailResponse: auditSessionDetailResponse == freezed
          ? _value.auditSessionDetailResponse
          : auditSessionDetailResponse // ignore: cast_nullable_to_non_nullable
              as AuditSessionDetailResponse?,
      auditRecordRequests: auditRecordRequests == freezed
          ? _value.auditRecordRequests
          : auditRecordRequests // ignore: cast_nullable_to_non_nullable
              as List<AuditRecordRequest>,
      listAllStyle: listAllStyle == freezed
          ? _value.listAllStyle
          : listAllStyle // ignore: cast_nullable_to_non_nullable
              as List<Style>,
      listAllProfile: listAllProfile == freezed
          ? _value.listAllProfile
          : listAllProfile // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
      listAuditStyle: listAuditStyle == freezed
          ? _value.listAuditStyle
          : listAuditStyle // ignore: cast_nullable_to_non_nullable
              as List<StyleAudit>,
      listAuditProfile: listAuditProfile == freezed
          ? _value.listAuditProfile
          : listAuditProfile // ignore: cast_nullable_to_non_nullable
              as List<ProfileAudit>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DataAuditDetailCopyWith<$Res>
    implements $AuditDetailDataCopyWith<$Res> {
  factory $DataAuditDetailCopyWith(
          DataAuditDetail value, $Res Function(DataAuditDetail) then) =
      _$DataAuditDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int auditId,
      AuditSessionDetailResponse? auditSessionDetailResponse,
      List<AuditRecordRequest> auditRecordRequests,
      List<Style> listAllStyle,
      List<ProfileModel> listAllProfile,
      List<StyleAudit> listAuditStyle,
      List<ProfileAudit> listAuditProfile,
      bool isLoading});
}

/// @nodoc
class _$DataAuditDetailCopyWithImpl<$Res>
    extends _$AuditDetailDataCopyWithImpl<$Res>
    implements $DataAuditDetailCopyWith<$Res> {
  _$DataAuditDetailCopyWithImpl(
      DataAuditDetail _value, $Res Function(DataAuditDetail) _then)
      : super(_value, (v) => _then(v as DataAuditDetail));

  @override
  DataAuditDetail get _value => super._value as DataAuditDetail;

  @override
  $Res call({
    Object? auditId = freezed,
    Object? auditSessionDetailResponse = freezed,
    Object? auditRecordRequests = freezed,
    Object? listAllStyle = freezed,
    Object? listAllProfile = freezed,
    Object? listAuditStyle = freezed,
    Object? listAuditProfile = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(DataAuditDetail(
      auditId: auditId == freezed
          ? _value.auditId
          : auditId // ignore: cast_nullable_to_non_nullable
              as int,
      auditSessionDetailResponse: auditSessionDetailResponse == freezed
          ? _value.auditSessionDetailResponse
          : auditSessionDetailResponse // ignore: cast_nullable_to_non_nullable
              as AuditSessionDetailResponse?,
      auditRecordRequests: auditRecordRequests == freezed
          ? _value.auditRecordRequests
          : auditRecordRequests // ignore: cast_nullable_to_non_nullable
              as List<AuditRecordRequest>,
      listAllStyle: listAllStyle == freezed
          ? _value.listAllStyle
          : listAllStyle // ignore: cast_nullable_to_non_nullable
              as List<Style>,
      listAllProfile: listAllProfile == freezed
          ? _value.listAllProfile
          : listAllProfile // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
      listAuditStyle: listAuditStyle == freezed
          ? _value.listAuditStyle
          : listAuditStyle // ignore: cast_nullable_to_non_nullable
              as List<StyleAudit>,
      listAuditProfile: listAuditProfile == freezed
          ? _value.listAuditProfile
          : listAuditProfile // ignore: cast_nullable_to_non_nullable
              as List<ProfileAudit>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$DataAuditDetail implements DataAuditDetail {
  const _$DataAuditDetail(
      {this.auditId = 0,
      this.auditSessionDetailResponse,
      this.auditRecordRequests = const [],
      this.listAllStyle = const [],
      this.listAllProfile = const [],
      this.listAuditStyle = const [],
      this.listAuditProfile = const [],
      this.isLoading = false});

  @JsonKey(defaultValue: 0)
  @override
  final int auditId;
  @override
  final AuditSessionDetailResponse? auditSessionDetailResponse;
  @JsonKey(defaultValue: const [])
  @override
  final List<AuditRecordRequest> auditRecordRequests;
  @JsonKey(defaultValue: const [])
  @override
  final List<Style> listAllStyle;
  @JsonKey(defaultValue: const [])
  @override
  final List<ProfileModel> listAllProfile;
  @JsonKey(defaultValue: const [])
  @override
  final List<StyleAudit> listAuditStyle;
  @JsonKey(defaultValue: const [])
  @override
  final List<ProfileAudit> listAuditProfile;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuditDetailData(auditId: $auditId, auditSessionDetailResponse: $auditSessionDetailResponse, auditRecordRequests: $auditRecordRequests, listAllStyle: $listAllStyle, listAllProfile: $listAllProfile, listAuditStyle: $listAuditStyle, listAuditProfile: $listAuditProfile, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataAuditDetail &&
            (identical(other.auditId, auditId) ||
                const DeepCollectionEquality()
                    .equals(other.auditId, auditId)) &&
            (identical(other.auditSessionDetailResponse,
                    auditSessionDetailResponse) ||
                const DeepCollectionEquality().equals(
                    other.auditSessionDetailResponse,
                    auditSessionDetailResponse)) &&
            (identical(other.auditRecordRequests, auditRecordRequests) ||
                const DeepCollectionEquality()
                    .equals(other.auditRecordRequests, auditRecordRequests)) &&
            (identical(other.listAllStyle, listAllStyle) ||
                const DeepCollectionEquality()
                    .equals(other.listAllStyle, listAllStyle)) &&
            (identical(other.listAllProfile, listAllProfile) ||
                const DeepCollectionEquality()
                    .equals(other.listAllProfile, listAllProfile)) &&
            (identical(other.listAuditStyle, listAuditStyle) ||
                const DeepCollectionEquality()
                    .equals(other.listAuditStyle, listAuditStyle)) &&
            (identical(other.listAuditProfile, listAuditProfile) ||
                const DeepCollectionEquality()
                    .equals(other.listAuditProfile, listAuditProfile)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(auditId) ^
      const DeepCollectionEquality().hash(auditSessionDetailResponse) ^
      const DeepCollectionEquality().hash(auditRecordRequests) ^
      const DeepCollectionEquality().hash(listAllStyle) ^
      const DeepCollectionEquality().hash(listAllProfile) ^
      const DeepCollectionEquality().hash(listAuditStyle) ^
      const DeepCollectionEquality().hash(listAuditProfile) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataAuditDetailCopyWith<DataAuditDetail> get copyWith =>
      _$DataAuditDetailCopyWithImpl<DataAuditDetail>(this, _$identity);
}

abstract class DataAuditDetail implements AuditDetailData {
  const factory DataAuditDetail(
      {int auditId,
      AuditSessionDetailResponse? auditSessionDetailResponse,
      List<AuditRecordRequest> auditRecordRequests,
      List<Style> listAllStyle,
      List<ProfileModel> listAllProfile,
      List<StyleAudit> listAuditStyle,
      List<ProfileAudit> listAuditProfile,
      bool isLoading}) = _$DataAuditDetail;

  @override
  int get auditId => throw _privateConstructorUsedError;
  @override
  AuditSessionDetailResponse? get auditSessionDetailResponse =>
      throw _privateConstructorUsedError;
  @override
  List<AuditRecordRequest> get auditRecordRequests =>
      throw _privateConstructorUsedError;
  @override
  List<Style> get listAllStyle => throw _privateConstructorUsedError;
  @override
  List<ProfileModel> get listAllProfile => throw _privateConstructorUsedError;
  @override
  List<StyleAudit> get listAuditStyle => throw _privateConstructorUsedError;
  @override
  List<ProfileAudit> get listAuditProfile => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataAuditDetailCopyWith<DataAuditDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuditDetailStateTearOff {
  const _$AuditDetailStateTearOff();

  Initial init(DataAuditDetail data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataAuditDetail data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataAuditDetail data) {
    return Loading(
      data,
    );
  }

  Error error(DataAuditDetail data) {
    return Error(
      data,
    );
  }
}

/// @nodoc
const $AuditDetailState = _$AuditDetailStateTearOff();

/// @nodoc
mixin _$AuditDetailState {
  DataAuditDetail get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataAuditDetail data) init,
    required TResult Function(DataAuditDetail data) loaded,
    required TResult Function(DataAuditDetail data) loading,
    required TResult Function(DataAuditDetail data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditDetail data)? init,
    TResult Function(DataAuditDetail data)? loaded,
    TResult Function(DataAuditDetail data)? loading,
    TResult Function(DataAuditDetail data)? error,
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
  $AuditDetailStateCopyWith<AuditDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditDetailStateCopyWith<$Res> {
  factory $AuditDetailStateCopyWith(
          AuditDetailState value, $Res Function(AuditDetailState) then) =
      _$AuditDetailStateCopyWithImpl<$Res>;
  $Res call({DataAuditDetail data});
}

/// @nodoc
class _$AuditDetailStateCopyWithImpl<$Res>
    implements $AuditDetailStateCopyWith<$Res> {
  _$AuditDetailStateCopyWithImpl(this._value, this._then);

  final AuditDetailState _value;
  // ignore: unused_field
  final $Res Function(AuditDetailState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataAuditDetail,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $AuditDetailStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditDetail data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuditDetailStateCopyWithImpl<$Res>
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
              as DataAuditDetail,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataAuditDetail data;

  @override
  String toString() {
    return 'AuditDetailState.init(data: $data)';
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
    required TResult Function(DataAuditDetail data) init,
    required TResult Function(DataAuditDetail data) loaded,
    required TResult Function(DataAuditDetail data) loading,
    required TResult Function(DataAuditDetail data) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditDetail data)? init,
    TResult Function(DataAuditDetail data)? loaded,
    TResult Function(DataAuditDetail data)? loading,
    TResult Function(DataAuditDetail data)? error,
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

abstract class Initial implements AuditDetailState {
  const factory Initial(DataAuditDetail data) = _$Initial;

  @override
  DataAuditDetail get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $AuditDetailStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditDetail data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$AuditDetailStateCopyWithImpl<$Res>
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
              as DataAuditDetail,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataAuditDetail data;

  @override
  String toString() {
    return 'AuditDetailState.loaded(data: $data)';
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
    required TResult Function(DataAuditDetail data) init,
    required TResult Function(DataAuditDetail data) loaded,
    required TResult Function(DataAuditDetail data) loading,
    required TResult Function(DataAuditDetail data) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditDetail data)? init,
    TResult Function(DataAuditDetail data)? loaded,
    TResult Function(DataAuditDetail data)? loading,
    TResult Function(DataAuditDetail data)? error,
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

abstract class Loaded implements AuditDetailState {
  const factory Loaded(DataAuditDetail data) = _$Loaded;

  @override
  DataAuditDetail get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $AuditDetailStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditDetail data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$AuditDetailStateCopyWithImpl<$Res>
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
              as DataAuditDetail,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataAuditDetail data;

  @override
  String toString() {
    return 'AuditDetailState.loading(data: $data)';
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
    required TResult Function(DataAuditDetail data) init,
    required TResult Function(DataAuditDetail data) loaded,
    required TResult Function(DataAuditDetail data) loading,
    required TResult Function(DataAuditDetail data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditDetail data)? init,
    TResult Function(DataAuditDetail data)? loaded,
    TResult Function(DataAuditDetail data)? loading,
    TResult Function(DataAuditDetail data)? error,
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

abstract class Loading implements AuditDetailState {
  const factory Loading(DataAuditDetail data) = _$Loading;

  @override
  DataAuditDetail get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> implements $AuditDetailStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditDetail data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AuditDetailStateCopyWithImpl<$Res>
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
              as DataAuditDetail,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.data);

  @override
  final DataAuditDetail data;

  @override
  String toString() {
    return 'AuditDetailState.error(data: $data)';
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
    required TResult Function(DataAuditDetail data) init,
    required TResult Function(DataAuditDetail data) loaded,
    required TResult Function(DataAuditDetail data) loading,
    required TResult Function(DataAuditDetail data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditDetail data)? init,
    TResult Function(DataAuditDetail data)? loaded,
    TResult Function(DataAuditDetail data)? loading,
    TResult Function(DataAuditDetail data)? error,
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

abstract class Error implements AuditDetailState {
  const factory Error(DataAuditDetail data) = _$Error;

  @override
  DataAuditDetail get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
