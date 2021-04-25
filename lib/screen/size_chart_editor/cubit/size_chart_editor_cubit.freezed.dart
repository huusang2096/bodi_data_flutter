// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'size_chart_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SizeChartEditorDataTearOff {
  const _$SizeChartEditorDataTearOff();

  DataSizeChartEditor call(
      {bool isLoading = false,
      List<SizeOption> listSizeOption = const [],
      required int styleId,
      String? timeChange}) {
    return DataSizeChartEditor(
      isLoading: isLoading,
      listSizeOption: listSizeOption,
      styleId: styleId,
      timeChange: timeChange,
    );
  }
}

/// @nodoc
const $SizeChartEditorData = _$SizeChartEditorDataTearOff();

/// @nodoc
mixin _$SizeChartEditorData {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SizeOption> get listSizeOption => throw _privateConstructorUsedError;
  int get styleId => throw _privateConstructorUsedError;
  String? get timeChange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SizeChartEditorDataCopyWith<SizeChartEditorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeChartEditorDataCopyWith<$Res> {
  factory $SizeChartEditorDataCopyWith(
          SizeChartEditorData value, $Res Function(SizeChartEditorData) then) =
      _$SizeChartEditorDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<SizeOption> listSizeOption,
      int styleId,
      String? timeChange});
}

/// @nodoc
class _$SizeChartEditorDataCopyWithImpl<$Res>
    implements $SizeChartEditorDataCopyWith<$Res> {
  _$SizeChartEditorDataCopyWithImpl(this._value, this._then);

  final SizeChartEditorData _value;
  // ignore: unused_field
  final $Res Function(SizeChartEditorData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listSizeOption = freezed,
    Object? styleId = freezed,
    Object? timeChange = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listSizeOption: listSizeOption == freezed
          ? _value.listSizeOption
          : listSizeOption // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>,
      styleId: styleId == freezed
          ? _value.styleId
          : styleId // ignore: cast_nullable_to_non_nullable
              as int,
      timeChange: timeChange == freezed
          ? _value.timeChange
          : timeChange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $DataSizeChartEditorCopyWith<$Res>
    implements $SizeChartEditorDataCopyWith<$Res> {
  factory $DataSizeChartEditorCopyWith(
          DataSizeChartEditor value, $Res Function(DataSizeChartEditor) then) =
      _$DataSizeChartEditorCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<SizeOption> listSizeOption,
      int styleId,
      String? timeChange});
}

/// @nodoc
class _$DataSizeChartEditorCopyWithImpl<$Res>
    extends _$SizeChartEditorDataCopyWithImpl<$Res>
    implements $DataSizeChartEditorCopyWith<$Res> {
  _$DataSizeChartEditorCopyWithImpl(
      DataSizeChartEditor _value, $Res Function(DataSizeChartEditor) _then)
      : super(_value, (v) => _then(v as DataSizeChartEditor));

  @override
  DataSizeChartEditor get _value => super._value as DataSizeChartEditor;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listSizeOption = freezed,
    Object? styleId = freezed,
    Object? timeChange = freezed,
  }) {
    return _then(DataSizeChartEditor(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listSizeOption: listSizeOption == freezed
          ? _value.listSizeOption
          : listSizeOption // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>,
      styleId: styleId == freezed
          ? _value.styleId
          : styleId // ignore: cast_nullable_to_non_nullable
              as int,
      timeChange: timeChange == freezed
          ? _value.timeChange
          : timeChange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$DataSizeChartEditor implements DataSizeChartEditor {
  const _$DataSizeChartEditor(
      {this.isLoading = false,
      this.listSizeOption = const [],
      required this.styleId,
      this.timeChange});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const [])
  @override
  final List<SizeOption> listSizeOption;
  @override
  final int styleId;
  @override
  final String? timeChange;

  @override
  String toString() {
    return 'SizeChartEditorData(isLoading: $isLoading, listSizeOption: $listSizeOption, styleId: $styleId, timeChange: $timeChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataSizeChartEditor &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.listSizeOption, listSizeOption) ||
                const DeepCollectionEquality()
                    .equals(other.listSizeOption, listSizeOption)) &&
            (identical(other.styleId, styleId) ||
                const DeepCollectionEquality()
                    .equals(other.styleId, styleId)) &&
            (identical(other.timeChange, timeChange) ||
                const DeepCollectionEquality()
                    .equals(other.timeChange, timeChange)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(listSizeOption) ^
      const DeepCollectionEquality().hash(styleId) ^
      const DeepCollectionEquality().hash(timeChange);

  @JsonKey(ignore: true)
  @override
  $DataSizeChartEditorCopyWith<DataSizeChartEditor> get copyWith =>
      _$DataSizeChartEditorCopyWithImpl<DataSizeChartEditor>(this, _$identity);
}

abstract class DataSizeChartEditor implements SizeChartEditorData {
  const factory DataSizeChartEditor(
      {bool isLoading,
      List<SizeOption> listSizeOption,
      required int styleId,
      String? timeChange}) = _$DataSizeChartEditor;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<SizeOption> get listSizeOption => throw _privateConstructorUsedError;
  @override
  int get styleId => throw _privateConstructorUsedError;
  @override
  String? get timeChange => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataSizeChartEditorCopyWith<DataSizeChartEditor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SizeChartEditorStateTearOff {
  const _$SizeChartEditorStateTearOff();

  Initial initial(DataSizeChartEditor data) {
    return Initial(
      data,
    );
  }

  Loading loading(DataSizeChartEditor data) {
    return Loading(
      data,
    );
  }

  Loaded loaded(DataSizeChartEditor data) {
    return Loaded(
      data,
    );
  }

  AddMeasurement addMeasurement(DataSizeChartEditor data) {
    return AddMeasurement(
      data,
    );
  }

  RemoveMeasurement removeMeasurement(DataSizeChartEditor data) {
    return RemoveMeasurement(
      data,
    );
  }
}

/// @nodoc
const $SizeChartEditorState = _$SizeChartEditorStateTearOff();

/// @nodoc
mixin _$SizeChartEditorState {
  DataSizeChartEditor get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSizeChartEditor data) initial,
    required TResult Function(DataSizeChartEditor data) loading,
    required TResult Function(DataSizeChartEditor data) loaded,
    required TResult Function(DataSizeChartEditor data) addMeasurement,
    required TResult Function(DataSizeChartEditor data) removeMeasurement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSizeChartEditor data)? initial,
    TResult Function(DataSizeChartEditor data)? loading,
    TResult Function(DataSizeChartEditor data)? loaded,
    TResult Function(DataSizeChartEditor data)? addMeasurement,
    TResult Function(DataSizeChartEditor data)? removeMeasurement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddMeasurement value) addMeasurement,
    required TResult Function(RemoveMeasurement value) removeMeasurement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddMeasurement value)? addMeasurement,
    TResult Function(RemoveMeasurement value)? removeMeasurement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SizeChartEditorStateCopyWith<SizeChartEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeChartEditorStateCopyWith<$Res> {
  factory $SizeChartEditorStateCopyWith(SizeChartEditorState value,
          $Res Function(SizeChartEditorState) then) =
      _$SizeChartEditorStateCopyWithImpl<$Res>;
  $Res call({DataSizeChartEditor data});
}

/// @nodoc
class _$SizeChartEditorStateCopyWithImpl<$Res>
    implements $SizeChartEditorStateCopyWith<$Res> {
  _$SizeChartEditorStateCopyWithImpl(this._value, this._then);

  final SizeChartEditorState _value;
  // ignore: unused_field
  final $Res Function(SizeChartEditorState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSizeChartEditor,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $SizeChartEditorStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataSizeChartEditor data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$SizeChartEditorStateCopyWithImpl<$Res>
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
              as DataSizeChartEditor,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataSizeChartEditor data;

  @override
  String toString() {
    return 'SizeChartEditorState.initial(data: $data)';
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
    required TResult Function(DataSizeChartEditor data) initial,
    required TResult Function(DataSizeChartEditor data) loading,
    required TResult Function(DataSizeChartEditor data) loaded,
    required TResult Function(DataSizeChartEditor data) addMeasurement,
    required TResult Function(DataSizeChartEditor data) removeMeasurement,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSizeChartEditor data)? initial,
    TResult Function(DataSizeChartEditor data)? loading,
    TResult Function(DataSizeChartEditor data)? loaded,
    TResult Function(DataSizeChartEditor data)? addMeasurement,
    TResult Function(DataSizeChartEditor data)? removeMeasurement,
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
    required TResult Function(AddMeasurement value) addMeasurement,
    required TResult Function(RemoveMeasurement value) removeMeasurement,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddMeasurement value)? addMeasurement,
    TResult Function(RemoveMeasurement value)? removeMeasurement,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SizeChartEditorState {
  const factory Initial(DataSizeChartEditor data) = _$Initial;

  @override
  DataSizeChartEditor get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $SizeChartEditorStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataSizeChartEditor data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$SizeChartEditorStateCopyWithImpl<$Res>
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
              as DataSizeChartEditor,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataSizeChartEditor data;

  @override
  String toString() {
    return 'SizeChartEditorState.loading(data: $data)';
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
    required TResult Function(DataSizeChartEditor data) initial,
    required TResult Function(DataSizeChartEditor data) loading,
    required TResult Function(DataSizeChartEditor data) loaded,
    required TResult Function(DataSizeChartEditor data) addMeasurement,
    required TResult Function(DataSizeChartEditor data) removeMeasurement,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSizeChartEditor data)? initial,
    TResult Function(DataSizeChartEditor data)? loading,
    TResult Function(DataSizeChartEditor data)? loaded,
    TResult Function(DataSizeChartEditor data)? addMeasurement,
    TResult Function(DataSizeChartEditor data)? removeMeasurement,
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
    required TResult Function(AddMeasurement value) addMeasurement,
    required TResult Function(RemoveMeasurement value) removeMeasurement,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddMeasurement value)? addMeasurement,
    TResult Function(RemoveMeasurement value)? removeMeasurement,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SizeChartEditorState {
  const factory Loading(DataSizeChartEditor data) = _$Loading;

  @override
  DataSizeChartEditor get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $SizeChartEditorStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataSizeChartEditor data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    extends _$SizeChartEditorStateCopyWithImpl<$Res>
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
              as DataSizeChartEditor,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataSizeChartEditor data;

  @override
  String toString() {
    return 'SizeChartEditorState.loaded(data: $data)';
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
    required TResult Function(DataSizeChartEditor data) initial,
    required TResult Function(DataSizeChartEditor data) loading,
    required TResult Function(DataSizeChartEditor data) loaded,
    required TResult Function(DataSizeChartEditor data) addMeasurement,
    required TResult Function(DataSizeChartEditor data) removeMeasurement,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSizeChartEditor data)? initial,
    TResult Function(DataSizeChartEditor data)? loading,
    TResult Function(DataSizeChartEditor data)? loaded,
    TResult Function(DataSizeChartEditor data)? addMeasurement,
    TResult Function(DataSizeChartEditor data)? removeMeasurement,
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
    required TResult Function(AddMeasurement value) addMeasurement,
    required TResult Function(RemoveMeasurement value) removeMeasurement,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddMeasurement value)? addMeasurement,
    TResult Function(RemoveMeasurement value)? removeMeasurement,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements SizeChartEditorState {
  const factory Loaded(DataSizeChartEditor data) = _$Loaded;

  @override
  DataSizeChartEditor get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMeasurementCopyWith<$Res>
    implements $SizeChartEditorStateCopyWith<$Res> {
  factory $AddMeasurementCopyWith(
          AddMeasurement value, $Res Function(AddMeasurement) then) =
      _$AddMeasurementCopyWithImpl<$Res>;
  @override
  $Res call({DataSizeChartEditor data});
}

/// @nodoc
class _$AddMeasurementCopyWithImpl<$Res>
    extends _$SizeChartEditorStateCopyWithImpl<$Res>
    implements $AddMeasurementCopyWith<$Res> {
  _$AddMeasurementCopyWithImpl(
      AddMeasurement _value, $Res Function(AddMeasurement) _then)
      : super(_value, (v) => _then(v as AddMeasurement));

  @override
  AddMeasurement get _value => super._value as AddMeasurement;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AddMeasurement(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSizeChartEditor,
    ));
  }
}

/// @nodoc
class _$AddMeasurement implements AddMeasurement {
  const _$AddMeasurement(this.data);

  @override
  final DataSizeChartEditor data;

  @override
  String toString() {
    return 'SizeChartEditorState.addMeasurement(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddMeasurement &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $AddMeasurementCopyWith<AddMeasurement> get copyWith =>
      _$AddMeasurementCopyWithImpl<AddMeasurement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSizeChartEditor data) initial,
    required TResult Function(DataSizeChartEditor data) loading,
    required TResult Function(DataSizeChartEditor data) loaded,
    required TResult Function(DataSizeChartEditor data) addMeasurement,
    required TResult Function(DataSizeChartEditor data) removeMeasurement,
  }) {
    return addMeasurement(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSizeChartEditor data)? initial,
    TResult Function(DataSizeChartEditor data)? loading,
    TResult Function(DataSizeChartEditor data)? loaded,
    TResult Function(DataSizeChartEditor data)? addMeasurement,
    TResult Function(DataSizeChartEditor data)? removeMeasurement,
    required TResult orElse(),
  }) {
    if (addMeasurement != null) {
      return addMeasurement(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddMeasurement value) addMeasurement,
    required TResult Function(RemoveMeasurement value) removeMeasurement,
  }) {
    return addMeasurement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddMeasurement value)? addMeasurement,
    TResult Function(RemoveMeasurement value)? removeMeasurement,
    required TResult orElse(),
  }) {
    if (addMeasurement != null) {
      return addMeasurement(this);
    }
    return orElse();
  }
}

abstract class AddMeasurement implements SizeChartEditorState {
  const factory AddMeasurement(DataSizeChartEditor data) = _$AddMeasurement;

  @override
  DataSizeChartEditor get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddMeasurementCopyWith<AddMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveMeasurementCopyWith<$Res>
    implements $SizeChartEditorStateCopyWith<$Res> {
  factory $RemoveMeasurementCopyWith(
          RemoveMeasurement value, $Res Function(RemoveMeasurement) then) =
      _$RemoveMeasurementCopyWithImpl<$Res>;
  @override
  $Res call({DataSizeChartEditor data});
}

/// @nodoc
class _$RemoveMeasurementCopyWithImpl<$Res>
    extends _$SizeChartEditorStateCopyWithImpl<$Res>
    implements $RemoveMeasurementCopyWith<$Res> {
  _$RemoveMeasurementCopyWithImpl(
      RemoveMeasurement _value, $Res Function(RemoveMeasurement) _then)
      : super(_value, (v) => _then(v as RemoveMeasurement));

  @override
  RemoveMeasurement get _value => super._value as RemoveMeasurement;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(RemoveMeasurement(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSizeChartEditor,
    ));
  }
}

/// @nodoc
class _$RemoveMeasurement implements RemoveMeasurement {
  const _$RemoveMeasurement(this.data);

  @override
  final DataSizeChartEditor data;

  @override
  String toString() {
    return 'SizeChartEditorState.removeMeasurement(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveMeasurement &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $RemoveMeasurementCopyWith<RemoveMeasurement> get copyWith =>
      _$RemoveMeasurementCopyWithImpl<RemoveMeasurement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataSizeChartEditor data) initial,
    required TResult Function(DataSizeChartEditor data) loading,
    required TResult Function(DataSizeChartEditor data) loaded,
    required TResult Function(DataSizeChartEditor data) addMeasurement,
    required TResult Function(DataSizeChartEditor data) removeMeasurement,
  }) {
    return removeMeasurement(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataSizeChartEditor data)? initial,
    TResult Function(DataSizeChartEditor data)? loading,
    TResult Function(DataSizeChartEditor data)? loaded,
    TResult Function(DataSizeChartEditor data)? addMeasurement,
    TResult Function(DataSizeChartEditor data)? removeMeasurement,
    required TResult orElse(),
  }) {
    if (removeMeasurement != null) {
      return removeMeasurement(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddMeasurement value) addMeasurement,
    required TResult Function(RemoveMeasurement value) removeMeasurement,
  }) {
    return removeMeasurement(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddMeasurement value)? addMeasurement,
    TResult Function(RemoveMeasurement value)? removeMeasurement,
    required TResult orElse(),
  }) {
    if (removeMeasurement != null) {
      return removeMeasurement(this);
    }
    return orElse();
  }
}

abstract class RemoveMeasurement implements SizeChartEditorState {
  const factory RemoveMeasurement(DataSizeChartEditor data) =
      _$RemoveMeasurement;

  @override
  DataSizeChartEditor get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RemoveMeasurementCopyWith<RemoveMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}
