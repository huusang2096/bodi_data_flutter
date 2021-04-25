// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audit_record_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuditRecordDataTearOff {
  const _$AuditRecordDataTearOff();

  DataAuditRecord call(
      {bool isLoading = false,
      bool showComment = false,
      int idSession = -1,
      int idStyle = -1,
      int idProfile = -1,
      List<DropdownSubCategorieModel> listDropDownSub = const [],
      Style? styleResponse,
      List<String> listTitleTable = const [],
      String selectedTitleTable = '',
      AuditSessionRecordRequest? auditSessionRecordRequest}) {
    return DataAuditRecord(
      isLoading: isLoading,
      showComment: showComment,
      idSession: idSession,
      idStyle: idStyle,
      idProfile: idProfile,
      listDropDownSub: listDropDownSub,
      styleResponse: styleResponse,
      listTitleTable: listTitleTable,
      selectedTitleTable: selectedTitleTable,
      auditSessionRecordRequest: auditSessionRecordRequest,
    );
  }
}

/// @nodoc
const $AuditRecordData = _$AuditRecordDataTearOff();

/// @nodoc
mixin _$AuditRecordData {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showComment => throw _privateConstructorUsedError;
  int get idSession => throw _privateConstructorUsedError;
  int get idStyle => throw _privateConstructorUsedError;
  int get idProfile => throw _privateConstructorUsedError;
  List<DropdownSubCategorieModel> get listDropDownSub =>
      throw _privateConstructorUsedError;
  Style? get styleResponse => throw _privateConstructorUsedError;
  List<String> get listTitleTable => throw _privateConstructorUsedError;
  String get selectedTitleTable => throw _privateConstructorUsedError;
  AuditSessionRecordRequest? get auditSessionRecordRequest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuditRecordDataCopyWith<AuditRecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditRecordDataCopyWith<$Res> {
  factory $AuditRecordDataCopyWith(
          AuditRecordData value, $Res Function(AuditRecordData) then) =
      _$AuditRecordDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool showComment,
      int idSession,
      int idStyle,
      int idProfile,
      List<DropdownSubCategorieModel> listDropDownSub,
      Style? styleResponse,
      List<String> listTitleTable,
      String selectedTitleTable,
      AuditSessionRecordRequest? auditSessionRecordRequest});
}

/// @nodoc
class _$AuditRecordDataCopyWithImpl<$Res>
    implements $AuditRecordDataCopyWith<$Res> {
  _$AuditRecordDataCopyWithImpl(this._value, this._then);

  final AuditRecordData _value;
  // ignore: unused_field
  final $Res Function(AuditRecordData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showComment = freezed,
    Object? idSession = freezed,
    Object? idStyle = freezed,
    Object? idProfile = freezed,
    Object? listDropDownSub = freezed,
    Object? styleResponse = freezed,
    Object? listTitleTable = freezed,
    Object? selectedTitleTable = freezed,
    Object? auditSessionRecordRequest = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showComment: showComment == freezed
          ? _value.showComment
          : showComment // ignore: cast_nullable_to_non_nullable
              as bool,
      idSession: idSession == freezed
          ? _value.idSession
          : idSession // ignore: cast_nullable_to_non_nullable
              as int,
      idStyle: idStyle == freezed
          ? _value.idStyle
          : idStyle // ignore: cast_nullable_to_non_nullable
              as int,
      idProfile: idProfile == freezed
          ? _value.idProfile
          : idProfile // ignore: cast_nullable_to_non_nullable
              as int,
      listDropDownSub: listDropDownSub == freezed
          ? _value.listDropDownSub
          : listDropDownSub // ignore: cast_nullable_to_non_nullable
              as List<DropdownSubCategorieModel>,
      styleResponse: styleResponse == freezed
          ? _value.styleResponse
          : styleResponse // ignore: cast_nullable_to_non_nullable
              as Style?,
      listTitleTable: listTitleTable == freezed
          ? _value.listTitleTable
          : listTitleTable // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTitleTable: selectedTitleTable == freezed
          ? _value.selectedTitleTable
          : selectedTitleTable // ignore: cast_nullable_to_non_nullable
              as String,
      auditSessionRecordRequest: auditSessionRecordRequest == freezed
          ? _value.auditSessionRecordRequest
          : auditSessionRecordRequest // ignore: cast_nullable_to_non_nullable
              as AuditSessionRecordRequest?,
    ));
  }
}

/// @nodoc
abstract class $DataAuditRecordCopyWith<$Res>
    implements $AuditRecordDataCopyWith<$Res> {
  factory $DataAuditRecordCopyWith(
          DataAuditRecord value, $Res Function(DataAuditRecord) then) =
      _$DataAuditRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool showComment,
      int idSession,
      int idStyle,
      int idProfile,
      List<DropdownSubCategorieModel> listDropDownSub,
      Style? styleResponse,
      List<String> listTitleTable,
      String selectedTitleTable,
      AuditSessionRecordRequest? auditSessionRecordRequest});
}

/// @nodoc
class _$DataAuditRecordCopyWithImpl<$Res>
    extends _$AuditRecordDataCopyWithImpl<$Res>
    implements $DataAuditRecordCopyWith<$Res> {
  _$DataAuditRecordCopyWithImpl(
      DataAuditRecord _value, $Res Function(DataAuditRecord) _then)
      : super(_value, (v) => _then(v as DataAuditRecord));

  @override
  DataAuditRecord get _value => super._value as DataAuditRecord;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showComment = freezed,
    Object? idSession = freezed,
    Object? idStyle = freezed,
    Object? idProfile = freezed,
    Object? listDropDownSub = freezed,
    Object? styleResponse = freezed,
    Object? listTitleTable = freezed,
    Object? selectedTitleTable = freezed,
    Object? auditSessionRecordRequest = freezed,
  }) {
    return _then(DataAuditRecord(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showComment: showComment == freezed
          ? _value.showComment
          : showComment // ignore: cast_nullable_to_non_nullable
              as bool,
      idSession: idSession == freezed
          ? _value.idSession
          : idSession // ignore: cast_nullable_to_non_nullable
              as int,
      idStyle: idStyle == freezed
          ? _value.idStyle
          : idStyle // ignore: cast_nullable_to_non_nullable
              as int,
      idProfile: idProfile == freezed
          ? _value.idProfile
          : idProfile // ignore: cast_nullable_to_non_nullable
              as int,
      listDropDownSub: listDropDownSub == freezed
          ? _value.listDropDownSub
          : listDropDownSub // ignore: cast_nullable_to_non_nullable
              as List<DropdownSubCategorieModel>,
      styleResponse: styleResponse == freezed
          ? _value.styleResponse
          : styleResponse // ignore: cast_nullable_to_non_nullable
              as Style?,
      listTitleTable: listTitleTable == freezed
          ? _value.listTitleTable
          : listTitleTable // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTitleTable: selectedTitleTable == freezed
          ? _value.selectedTitleTable
          : selectedTitleTable // ignore: cast_nullable_to_non_nullable
              as String,
      auditSessionRecordRequest: auditSessionRecordRequest == freezed
          ? _value.auditSessionRecordRequest
          : auditSessionRecordRequest // ignore: cast_nullable_to_non_nullable
              as AuditSessionRecordRequest?,
    ));
  }
}

/// @nodoc
class _$DataAuditRecord implements DataAuditRecord {
  const _$DataAuditRecord(
      {this.isLoading = false,
      this.showComment = false,
      this.idSession = -1,
      this.idStyle = -1,
      this.idProfile = -1,
      this.listDropDownSub = const [],
      this.styleResponse,
      this.listTitleTable = const [],
      this.selectedTitleTable = '',
      this.auditSessionRecordRequest});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool showComment;
  @JsonKey(defaultValue: -1)
  @override
  final int idSession;
  @JsonKey(defaultValue: -1)
  @override
  final int idStyle;
  @JsonKey(defaultValue: -1)
  @override
  final int idProfile;
  @JsonKey(defaultValue: const [])
  @override
  final List<DropdownSubCategorieModel> listDropDownSub;
  @override
  final Style? styleResponse;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> listTitleTable;
  @JsonKey(defaultValue: '')
  @override
  final String selectedTitleTable;
  @override
  final AuditSessionRecordRequest? auditSessionRecordRequest;

  @override
  String toString() {
    return 'AuditRecordData(isLoading: $isLoading, showComment: $showComment, idSession: $idSession, idStyle: $idStyle, idProfile: $idProfile, listDropDownSub: $listDropDownSub, styleResponse: $styleResponse, listTitleTable: $listTitleTable, selectedTitleTable: $selectedTitleTable, auditSessionRecordRequest: $auditSessionRecordRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataAuditRecord &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.showComment, showComment) ||
                const DeepCollectionEquality()
                    .equals(other.showComment, showComment)) &&
            (identical(other.idSession, idSession) ||
                const DeepCollectionEquality()
                    .equals(other.idSession, idSession)) &&
            (identical(other.idStyle, idStyle) ||
                const DeepCollectionEquality()
                    .equals(other.idStyle, idStyle)) &&
            (identical(other.idProfile, idProfile) ||
                const DeepCollectionEquality()
                    .equals(other.idProfile, idProfile)) &&
            (identical(other.listDropDownSub, listDropDownSub) ||
                const DeepCollectionEquality()
                    .equals(other.listDropDownSub, listDropDownSub)) &&
            (identical(other.styleResponse, styleResponse) ||
                const DeepCollectionEquality()
                    .equals(other.styleResponse, styleResponse)) &&
            (identical(other.listTitleTable, listTitleTable) ||
                const DeepCollectionEquality()
                    .equals(other.listTitleTable, listTitleTable)) &&
            (identical(other.selectedTitleTable, selectedTitleTable) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTitleTable, selectedTitleTable)) &&
            (identical(other.auditSessionRecordRequest,
                    auditSessionRecordRequest) ||
                const DeepCollectionEquality().equals(
                    other.auditSessionRecordRequest,
                    auditSessionRecordRequest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showComment) ^
      const DeepCollectionEquality().hash(idSession) ^
      const DeepCollectionEquality().hash(idStyle) ^
      const DeepCollectionEquality().hash(idProfile) ^
      const DeepCollectionEquality().hash(listDropDownSub) ^
      const DeepCollectionEquality().hash(styleResponse) ^
      const DeepCollectionEquality().hash(listTitleTable) ^
      const DeepCollectionEquality().hash(selectedTitleTable) ^
      const DeepCollectionEquality().hash(auditSessionRecordRequest);

  @JsonKey(ignore: true)
  @override
  $DataAuditRecordCopyWith<DataAuditRecord> get copyWith =>
      _$DataAuditRecordCopyWithImpl<DataAuditRecord>(this, _$identity);
}

abstract class DataAuditRecord implements AuditRecordData {
  const factory DataAuditRecord(
          {bool isLoading,
          bool showComment,
          int idSession,
          int idStyle,
          int idProfile,
          List<DropdownSubCategorieModel> listDropDownSub,
          Style? styleResponse,
          List<String> listTitleTable,
          String selectedTitleTable,
          AuditSessionRecordRequest? auditSessionRecordRequest}) =
      _$DataAuditRecord;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get showComment => throw _privateConstructorUsedError;
  @override
  int get idSession => throw _privateConstructorUsedError;
  @override
  int get idStyle => throw _privateConstructorUsedError;
  @override
  int get idProfile => throw _privateConstructorUsedError;
  @override
  List<DropdownSubCategorieModel> get listDropDownSub =>
      throw _privateConstructorUsedError;
  @override
  Style? get styleResponse => throw _privateConstructorUsedError;
  @override
  List<String> get listTitleTable => throw _privateConstructorUsedError;
  @override
  String get selectedTitleTable => throw _privateConstructorUsedError;
  @override
  AuditSessionRecordRequest? get auditSessionRecordRequest =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataAuditRecordCopyWith<DataAuditRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuditRecordStateTearOff {
  const _$AuditRecordStateTearOff();

  Initial init(DataAuditRecord data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataAuditRecord data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataAuditRecord data) {
    return Loading(
      data,
    );
  }

  Error error(DataAuditRecord data) {
    return Error(
      data,
    );
  }
}

/// @nodoc
const $AuditRecordState = _$AuditRecordStateTearOff();

/// @nodoc
mixin _$AuditRecordState {
  DataAuditRecord get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataAuditRecord data) init,
    required TResult Function(DataAuditRecord data) loaded,
    required TResult Function(DataAuditRecord data) loading,
    required TResult Function(DataAuditRecord data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditRecord data)? init,
    TResult Function(DataAuditRecord data)? loaded,
    TResult Function(DataAuditRecord data)? loading,
    TResult Function(DataAuditRecord data)? error,
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
  $AuditRecordStateCopyWith<AuditRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditRecordStateCopyWith<$Res> {
  factory $AuditRecordStateCopyWith(
          AuditRecordState value, $Res Function(AuditRecordState) then) =
      _$AuditRecordStateCopyWithImpl<$Res>;
  $Res call({DataAuditRecord data});
}

/// @nodoc
class _$AuditRecordStateCopyWithImpl<$Res>
    implements $AuditRecordStateCopyWith<$Res> {
  _$AuditRecordStateCopyWithImpl(this._value, this._then);

  final AuditRecordState _value;
  // ignore: unused_field
  final $Res Function(AuditRecordState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataAuditRecord,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $AuditRecordStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditRecord data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuditRecordStateCopyWithImpl<$Res>
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
              as DataAuditRecord,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataAuditRecord data;

  @override
  String toString() {
    return 'AuditRecordState.init(data: $data)';
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
    required TResult Function(DataAuditRecord data) init,
    required TResult Function(DataAuditRecord data) loaded,
    required TResult Function(DataAuditRecord data) loading,
    required TResult Function(DataAuditRecord data) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditRecord data)? init,
    TResult Function(DataAuditRecord data)? loaded,
    TResult Function(DataAuditRecord data)? loading,
    TResult Function(DataAuditRecord data)? error,
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

abstract class Initial implements AuditRecordState {
  const factory Initial(DataAuditRecord data) = _$Initial;

  @override
  DataAuditRecord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $AuditRecordStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditRecord data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$AuditRecordStateCopyWithImpl<$Res>
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
              as DataAuditRecord,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataAuditRecord data;

  @override
  String toString() {
    return 'AuditRecordState.loaded(data: $data)';
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
    required TResult Function(DataAuditRecord data) init,
    required TResult Function(DataAuditRecord data) loaded,
    required TResult Function(DataAuditRecord data) loading,
    required TResult Function(DataAuditRecord data) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditRecord data)? init,
    TResult Function(DataAuditRecord data)? loaded,
    TResult Function(DataAuditRecord data)? loading,
    TResult Function(DataAuditRecord data)? error,
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

abstract class Loaded implements AuditRecordState {
  const factory Loaded(DataAuditRecord data) = _$Loaded;

  @override
  DataAuditRecord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $AuditRecordStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditRecord data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$AuditRecordStateCopyWithImpl<$Res>
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
              as DataAuditRecord,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataAuditRecord data;

  @override
  String toString() {
    return 'AuditRecordState.loading(data: $data)';
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
    required TResult Function(DataAuditRecord data) init,
    required TResult Function(DataAuditRecord data) loaded,
    required TResult Function(DataAuditRecord data) loading,
    required TResult Function(DataAuditRecord data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditRecord data)? init,
    TResult Function(DataAuditRecord data)? loaded,
    TResult Function(DataAuditRecord data)? loading,
    TResult Function(DataAuditRecord data)? error,
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

abstract class Loading implements AuditRecordState {
  const factory Loading(DataAuditRecord data) = _$Loading;

  @override
  DataAuditRecord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> implements $AuditRecordStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataAuditRecord data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AuditRecordStateCopyWithImpl<$Res>
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
              as DataAuditRecord,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.data);

  @override
  final DataAuditRecord data;

  @override
  String toString() {
    return 'AuditRecordState.error(data: $data)';
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
    required TResult Function(DataAuditRecord data) init,
    required TResult Function(DataAuditRecord data) loaded,
    required TResult Function(DataAuditRecord data) loading,
    required TResult Function(DataAuditRecord data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataAuditRecord data)? init,
    TResult Function(DataAuditRecord data)? loaded,
    TResult Function(DataAuditRecord data)? loading,
    TResult Function(DataAuditRecord data)? error,
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

abstract class Error implements AuditRecordState {
  const factory Error(DataAuditRecord data) = _$Error;

  @override
  DataAuditRecord get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
