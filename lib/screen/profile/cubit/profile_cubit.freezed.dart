// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileDataTearOff {
  const _$ProfileDataTearOff();

  DataProfile call(
      {bool isLoading = false,
      bool isLoadingGender = false,
      bool isLoadingHashTags = false,
      List<ProfileModel> listProfiles = const [],
      List<ClothingPreferency> listGenders = const [],
      List<Hashtag> listHashtags = const [],
      String keySearch = "",
      String limit = "5",
      String page = "1",
      List<String> listPages = const [],
      DeviceScreenType deviceScreenType = DeviceScreenType.desktop}) {
    return DataProfile(
      isLoading: isLoading,
      isLoadingGender: isLoadingGender,
      isLoadingHashTags: isLoadingHashTags,
      listProfiles: listProfiles,
      listGenders: listGenders,
      listHashtags: listHashtags,
      keySearch: keySearch,
      limit: limit,
      page: page,
      listPages: listPages,
      deviceScreenType: deviceScreenType,
    );
  }
}

/// @nodoc
const $ProfileData = _$ProfileDataTearOff();

/// @nodoc
mixin _$ProfileData {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingGender => throw _privateConstructorUsedError;
  bool get isLoadingHashTags => throw _privateConstructorUsedError;
  List<ProfileModel> get listProfiles => throw _privateConstructorUsedError;
  List<ClothingPreferency> get listGenders =>
      throw _privateConstructorUsedError;
  List<Hashtag> get listHashtags => throw _privateConstructorUsedError;
  String get keySearch => throw _privateConstructorUsedError;
  String get limit => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  List<String> get listPages => throw _privateConstructorUsedError;
  DeviceScreenType get deviceScreenType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoadingGender,
      bool isLoadingHashTags,
      List<ProfileModel> listProfiles,
      List<ClothingPreferency> listGenders,
      List<Hashtag> listHashtags,
      String keySearch,
      String limit,
      String page,
      List<String> listPages,
      DeviceScreenType deviceScreenType});
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res> implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  final ProfileData _value;
  // ignore: unused_field
  final $Res Function(ProfileData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingGender = freezed,
    Object? isLoadingHashTags = freezed,
    Object? listProfiles = freezed,
    Object? listGenders = freezed,
    Object? listHashtags = freezed,
    Object? keySearch = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? listPages = freezed,
    Object? deviceScreenType = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingGender: isLoadingGender == freezed
          ? _value.isLoadingGender
          : isLoadingGender // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingHashTags: isLoadingHashTags == freezed
          ? _value.isLoadingHashTags
          : isLoadingHashTags // ignore: cast_nullable_to_non_nullable
              as bool,
      listProfiles: listProfiles == freezed
          ? _value.listProfiles
          : listProfiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
      listGenders: listGenders == freezed
          ? _value.listGenders
          : listGenders // ignore: cast_nullable_to_non_nullable
              as List<ClothingPreferency>,
      listHashtags: listHashtags == freezed
          ? _value.listHashtags
          : listHashtags // ignore: cast_nullable_to_non_nullable
              as List<Hashtag>,
      keySearch: keySearch == freezed
          ? _value.keySearch
          : keySearch // ignore: cast_nullable_to_non_nullable
              as String,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      listPages: listPages == freezed
          ? _value.listPages
          : listPages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deviceScreenType: deviceScreenType == freezed
          ? _value.deviceScreenType
          : deviceScreenType // ignore: cast_nullable_to_non_nullable
              as DeviceScreenType,
    ));
  }
}

/// @nodoc
abstract class $DataProfileCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory $DataProfileCopyWith(
          DataProfile value, $Res Function(DataProfile) then) =
      _$DataProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoadingGender,
      bool isLoadingHashTags,
      List<ProfileModel> listProfiles,
      List<ClothingPreferency> listGenders,
      List<Hashtag> listHashtags,
      String keySearch,
      String limit,
      String page,
      List<String> listPages,
      DeviceScreenType deviceScreenType});
}

/// @nodoc
class _$DataProfileCopyWithImpl<$Res> extends _$ProfileDataCopyWithImpl<$Res>
    implements $DataProfileCopyWith<$Res> {
  _$DataProfileCopyWithImpl(
      DataProfile _value, $Res Function(DataProfile) _then)
      : super(_value, (v) => _then(v as DataProfile));

  @override
  DataProfile get _value => super._value as DataProfile;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoadingGender = freezed,
    Object? isLoadingHashTags = freezed,
    Object? listProfiles = freezed,
    Object? listGenders = freezed,
    Object? listHashtags = freezed,
    Object? keySearch = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? listPages = freezed,
    Object? deviceScreenType = freezed,
  }) {
    return _then(DataProfile(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingGender: isLoadingGender == freezed
          ? _value.isLoadingGender
          : isLoadingGender // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingHashTags: isLoadingHashTags == freezed
          ? _value.isLoadingHashTags
          : isLoadingHashTags // ignore: cast_nullable_to_non_nullable
              as bool,
      listProfiles: listProfiles == freezed
          ? _value.listProfiles
          : listProfiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
      listGenders: listGenders == freezed
          ? _value.listGenders
          : listGenders // ignore: cast_nullable_to_non_nullable
              as List<ClothingPreferency>,
      listHashtags: listHashtags == freezed
          ? _value.listHashtags
          : listHashtags // ignore: cast_nullable_to_non_nullable
              as List<Hashtag>,
      keySearch: keySearch == freezed
          ? _value.keySearch
          : keySearch // ignore: cast_nullable_to_non_nullable
              as String,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      listPages: listPages == freezed
          ? _value.listPages
          : listPages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deviceScreenType: deviceScreenType == freezed
          ? _value.deviceScreenType
          : deviceScreenType // ignore: cast_nullable_to_non_nullable
              as DeviceScreenType,
    ));
  }
}

/// @nodoc
class _$DataProfile implements DataProfile {
  const _$DataProfile(
      {this.isLoading = false,
      this.isLoadingGender = false,
      this.isLoadingHashTags = false,
      this.listProfiles = const [],
      this.listGenders = const [],
      this.listHashtags = const [],
      this.keySearch = "",
      this.limit = "5",
      this.page = "1",
      this.listPages = const [],
      this.deviceScreenType = DeviceScreenType.desktop});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingGender;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingHashTags;
  @JsonKey(defaultValue: const [])
  @override
  final List<ProfileModel> listProfiles;
  @JsonKey(defaultValue: const [])
  @override
  final List<ClothingPreferency> listGenders;
  @JsonKey(defaultValue: const [])
  @override
  final List<Hashtag> listHashtags;
  @JsonKey(defaultValue: "")
  @override
  final String keySearch;
  @JsonKey(defaultValue: "5")
  @override
  final String limit;
  @JsonKey(defaultValue: "1")
  @override
  final String page;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> listPages;
  @JsonKey(defaultValue: DeviceScreenType.desktop)
  @override
  final DeviceScreenType deviceScreenType;

  @override
  String toString() {
    return 'ProfileData(isLoading: $isLoading, isLoadingGender: $isLoadingGender, isLoadingHashTags: $isLoadingHashTags, listProfiles: $listProfiles, listGenders: $listGenders, listHashtags: $listHashtags, keySearch: $keySearch, limit: $limit, page: $page, listPages: $listPages, deviceScreenType: $deviceScreenType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataProfile &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoadingGender, isLoadingGender) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingGender, isLoadingGender)) &&
            (identical(other.isLoadingHashTags, isLoadingHashTags) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingHashTags, isLoadingHashTags)) &&
            (identical(other.listProfiles, listProfiles) ||
                const DeepCollectionEquality()
                    .equals(other.listProfiles, listProfiles)) &&
            (identical(other.listGenders, listGenders) ||
                const DeepCollectionEquality()
                    .equals(other.listGenders, listGenders)) &&
            (identical(other.listHashtags, listHashtags) ||
                const DeepCollectionEquality()
                    .equals(other.listHashtags, listHashtags)) &&
            (identical(other.keySearch, keySearch) ||
                const DeepCollectionEquality()
                    .equals(other.keySearch, keySearch)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.listPages, listPages) ||
                const DeepCollectionEquality()
                    .equals(other.listPages, listPages)) &&
            (identical(other.deviceScreenType, deviceScreenType) ||
                const DeepCollectionEquality()
                    .equals(other.deviceScreenType, deviceScreenType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoadingGender) ^
      const DeepCollectionEquality().hash(isLoadingHashTags) ^
      const DeepCollectionEquality().hash(listProfiles) ^
      const DeepCollectionEquality().hash(listGenders) ^
      const DeepCollectionEquality().hash(listHashtags) ^
      const DeepCollectionEquality().hash(keySearch) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(listPages) ^
      const DeepCollectionEquality().hash(deviceScreenType);

  @JsonKey(ignore: true)
  @override
  $DataProfileCopyWith<DataProfile> get copyWith =>
      _$DataProfileCopyWithImpl<DataProfile>(this, _$identity);
}

abstract class DataProfile implements ProfileData {
  const factory DataProfile(
      {bool isLoading,
      bool isLoadingGender,
      bool isLoadingHashTags,
      List<ProfileModel> listProfiles,
      List<ClothingPreferency> listGenders,
      List<Hashtag> listHashtags,
      String keySearch,
      String limit,
      String page,
      List<String> listPages,
      DeviceScreenType deviceScreenType}) = _$DataProfile;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoadingGender => throw _privateConstructorUsedError;
  @override
  bool get isLoadingHashTags => throw _privateConstructorUsedError;
  @override
  List<ProfileModel> get listProfiles => throw _privateConstructorUsedError;
  @override
  List<ClothingPreferency> get listGenders =>
      throw _privateConstructorUsedError;
  @override
  List<Hashtag> get listHashtags => throw _privateConstructorUsedError;
  @override
  String get keySearch => throw _privateConstructorUsedError;
  @override
  String get limit => throw _privateConstructorUsedError;
  @override
  String get page => throw _privateConstructorUsedError;
  @override
  List<String> get listPages => throw _privateConstructorUsedError;
  @override
  DeviceScreenType get deviceScreenType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataProfileCopyWith<DataProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  Initial initial(DataProfile data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataProfile data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataProfile data) {
    return Loading(
      data,
    );
  }

  GetDeviceScreenType getDeviceScreenType(DataProfile data) {
    return GetDeviceScreenType(
      data,
    );
  }

  GetProfileSuccess getProfileSuccess(DataProfile data) {
    return GetProfileSuccess(
      data,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  DataProfile get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataProfile data) initial,
    required TResult Function(DataProfile data) loaded,
    required TResult Function(DataProfile data) loading,
    required TResult Function(DataProfile data) getDeviceScreenType,
    required TResult Function(DataProfile data) getProfileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataProfile data)? initial,
    TResult Function(DataProfile data)? loaded,
    TResult Function(DataProfile data)? loading,
    TResult Function(DataProfile data)? getDeviceScreenType,
    TResult Function(DataProfile data)? getProfileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDeviceScreenType value) getDeviceScreenType,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(GetDeviceScreenType value)? getDeviceScreenType,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({DataProfile data});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataProfile,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataProfile data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
              as DataProfile,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataProfile data;

  @override
  String toString() {
    return 'ProfileState.initial(data: $data)';
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
    required TResult Function(DataProfile data) initial,
    required TResult Function(DataProfile data) loaded,
    required TResult Function(DataProfile data) loading,
    required TResult Function(DataProfile data) getDeviceScreenType,
    required TResult Function(DataProfile data) getProfileSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataProfile data)? initial,
    TResult Function(DataProfile data)? loaded,
    TResult Function(DataProfile data)? loading,
    TResult Function(DataProfile data)? getDeviceScreenType,
    TResult Function(DataProfile data)? getProfileSuccess,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDeviceScreenType value) getDeviceScreenType,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(GetDeviceScreenType value)? getDeviceScreenType,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileState {
  const factory Initial(DataProfile data) = _$Initial;

  @override
  DataProfile get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataProfile data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
              as DataProfile,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataProfile data;

  @override
  String toString() {
    return 'ProfileState.loaded(data: $data)';
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
    required TResult Function(DataProfile data) initial,
    required TResult Function(DataProfile data) loaded,
    required TResult Function(DataProfile data) loading,
    required TResult Function(DataProfile data) getDeviceScreenType,
    required TResult Function(DataProfile data) getProfileSuccess,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataProfile data)? initial,
    TResult Function(DataProfile data)? loaded,
    TResult Function(DataProfile data)? loading,
    TResult Function(DataProfile data)? getDeviceScreenType,
    TResult Function(DataProfile data)? getProfileSuccess,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDeviceScreenType value) getDeviceScreenType,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(GetDeviceScreenType value)? getDeviceScreenType,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ProfileState {
  const factory Loaded(DataProfile data) = _$Loaded;

  @override
  DataProfile get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataProfile data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
              as DataProfile,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataProfile data;

  @override
  String toString() {
    return 'ProfileState.loading(data: $data)';
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
    required TResult Function(DataProfile data) initial,
    required TResult Function(DataProfile data) loaded,
    required TResult Function(DataProfile data) loading,
    required TResult Function(DataProfile data) getDeviceScreenType,
    required TResult Function(DataProfile data) getProfileSuccess,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataProfile data)? initial,
    TResult Function(DataProfile data)? loaded,
    TResult Function(DataProfile data)? loading,
    TResult Function(DataProfile data)? getDeviceScreenType,
    TResult Function(DataProfile data)? getProfileSuccess,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDeviceScreenType value) getDeviceScreenType,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(GetDeviceScreenType value)? getDeviceScreenType,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProfileState {
  const factory Loading(DataProfile data) = _$Loading;

  @override
  DataProfile get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDeviceScreenTypeCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $GetDeviceScreenTypeCopyWith(
          GetDeviceScreenType value, $Res Function(GetDeviceScreenType) then) =
      _$GetDeviceScreenTypeCopyWithImpl<$Res>;
  @override
  $Res call({DataProfile data});
}

/// @nodoc
class _$GetDeviceScreenTypeCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $GetDeviceScreenTypeCopyWith<$Res> {
  _$GetDeviceScreenTypeCopyWithImpl(
      GetDeviceScreenType _value, $Res Function(GetDeviceScreenType) _then)
      : super(_value, (v) => _then(v as GetDeviceScreenType));

  @override
  GetDeviceScreenType get _value => super._value as GetDeviceScreenType;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(GetDeviceScreenType(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataProfile,
    ));
  }
}

/// @nodoc
class _$GetDeviceScreenType implements GetDeviceScreenType {
  const _$GetDeviceScreenType(this.data);

  @override
  final DataProfile data;

  @override
  String toString() {
    return 'ProfileState.getDeviceScreenType(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetDeviceScreenType &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetDeviceScreenTypeCopyWith<GetDeviceScreenType> get copyWith =>
      _$GetDeviceScreenTypeCopyWithImpl<GetDeviceScreenType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataProfile data) initial,
    required TResult Function(DataProfile data) loaded,
    required TResult Function(DataProfile data) loading,
    required TResult Function(DataProfile data) getDeviceScreenType,
    required TResult Function(DataProfile data) getProfileSuccess,
  }) {
    return getDeviceScreenType(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataProfile data)? initial,
    TResult Function(DataProfile data)? loaded,
    TResult Function(DataProfile data)? loading,
    TResult Function(DataProfile data)? getDeviceScreenType,
    TResult Function(DataProfile data)? getProfileSuccess,
    required TResult orElse(),
  }) {
    if (getDeviceScreenType != null) {
      return getDeviceScreenType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDeviceScreenType value) getDeviceScreenType,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
  }) {
    return getDeviceScreenType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(GetDeviceScreenType value)? getDeviceScreenType,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    required TResult orElse(),
  }) {
    if (getDeviceScreenType != null) {
      return getDeviceScreenType(this);
    }
    return orElse();
  }
}

abstract class GetDeviceScreenType implements ProfileState {
  const factory GetDeviceScreenType(DataProfile data) = _$GetDeviceScreenType;

  @override
  DataProfile get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetDeviceScreenTypeCopyWith<GetDeviceScreenType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileSuccessCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $GetProfileSuccessCopyWith(
          GetProfileSuccess value, $Res Function(GetProfileSuccess) then) =
      _$GetProfileSuccessCopyWithImpl<$Res>;
  @override
  $Res call({DataProfile data});
}

/// @nodoc
class _$GetProfileSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $GetProfileSuccessCopyWith<$Res> {
  _$GetProfileSuccessCopyWithImpl(
      GetProfileSuccess _value, $Res Function(GetProfileSuccess) _then)
      : super(_value, (v) => _then(v as GetProfileSuccess));

  @override
  GetProfileSuccess get _value => super._value as GetProfileSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(GetProfileSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataProfile,
    ));
  }
}

/// @nodoc
class _$GetProfileSuccess implements GetProfileSuccess {
  const _$GetProfileSuccess(this.data);

  @override
  final DataProfile data;

  @override
  String toString() {
    return 'ProfileState.getProfileSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProfileSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetProfileSuccessCopyWith<GetProfileSuccess> get copyWith =>
      _$GetProfileSuccessCopyWithImpl<GetProfileSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataProfile data) initial,
    required TResult Function(DataProfile data) loaded,
    required TResult Function(DataProfile data) loading,
    required TResult Function(DataProfile data) getDeviceScreenType,
    required TResult Function(DataProfile data) getProfileSuccess,
  }) {
    return getProfileSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataProfile data)? initial,
    TResult Function(DataProfile data)? loaded,
    TResult Function(DataProfile data)? loading,
    TResult Function(DataProfile data)? getDeviceScreenType,
    TResult Function(DataProfile data)? getProfileSuccess,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(GetDeviceScreenType value) getDeviceScreenType,
    required TResult Function(GetProfileSuccess value) getProfileSuccess,
  }) {
    return getProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(GetDeviceScreenType value)? getDeviceScreenType,
    TResult Function(GetProfileSuccess value)? getProfileSuccess,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class GetProfileSuccess implements ProfileState {
  const factory GetProfileSuccess(DataProfile data) = _$GetProfileSuccess;

  @override
  DataProfile get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetProfileSuccessCopyWith<GetProfileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
