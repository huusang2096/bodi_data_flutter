// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentsDataTearOff {
  const _$CommentsDataTearOff();

  DataComments call(
      {bool isLoading = false,
      required CommentModule commentModule,
      required int id,
      List<Comments> listComments = const [],
      String strComment = '',
      String limit = '5',
      String page = '1',
      List<String> listPages = const []}) {
    return DataComments(
      isLoading: isLoading,
      commentModule: commentModule,
      id: id,
      listComments: listComments,
      strComment: strComment,
      limit: limit,
      page: page,
      listPages: listPages,
    );
  }
}

/// @nodoc
const $CommentsData = _$CommentsDataTearOff();

/// @nodoc
mixin _$CommentsData {
  bool get isLoading => throw _privateConstructorUsedError;
  CommentModule get commentModule => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<Comments> get listComments => throw _privateConstructorUsedError;
  String get strComment => throw _privateConstructorUsedError;
  String get limit => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  List<String> get listPages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsDataCopyWith<CommentsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDataCopyWith<$Res> {
  factory $CommentsDataCopyWith(
          CommentsData value, $Res Function(CommentsData) then) =
      _$CommentsDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      CommentModule commentModule,
      int id,
      List<Comments> listComments,
      String strComment,
      String limit,
      String page,
      List<String> listPages});
}

/// @nodoc
class _$CommentsDataCopyWithImpl<$Res> implements $CommentsDataCopyWith<$Res> {
  _$CommentsDataCopyWithImpl(this._value, this._then);

  final CommentsData _value;
  // ignore: unused_field
  final $Res Function(CommentsData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? commentModule = freezed,
    Object? id = freezed,
    Object? listComments = freezed,
    Object? strComment = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? listPages = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      commentModule: commentModule == freezed
          ? _value.commentModule
          : commentModule // ignore: cast_nullable_to_non_nullable
              as CommentModule,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      listComments: listComments == freezed
          ? _value.listComments
          : listComments // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
      strComment: strComment == freezed
          ? _value.strComment
          : strComment // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class $DataCommentsCopyWith<$Res>
    implements $CommentsDataCopyWith<$Res> {
  factory $DataCommentsCopyWith(
          DataComments value, $Res Function(DataComments) then) =
      _$DataCommentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      CommentModule commentModule,
      int id,
      List<Comments> listComments,
      String strComment,
      String limit,
      String page,
      List<String> listPages});
}

/// @nodoc
class _$DataCommentsCopyWithImpl<$Res> extends _$CommentsDataCopyWithImpl<$Res>
    implements $DataCommentsCopyWith<$Res> {
  _$DataCommentsCopyWithImpl(
      DataComments _value, $Res Function(DataComments) _then)
      : super(_value, (v) => _then(v as DataComments));

  @override
  DataComments get _value => super._value as DataComments;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? commentModule = freezed,
    Object? id = freezed,
    Object? listComments = freezed,
    Object? strComment = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? listPages = freezed,
  }) {
    return _then(DataComments(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      commentModule: commentModule == freezed
          ? _value.commentModule
          : commentModule // ignore: cast_nullable_to_non_nullable
              as CommentModule,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      listComments: listComments == freezed
          ? _value.listComments
          : listComments // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
      strComment: strComment == freezed
          ? _value.strComment
          : strComment // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
class _$DataComments implements DataComments {
  const _$DataComments(
      {this.isLoading = false,
      required this.commentModule,
      required this.id,
      this.listComments = const [],
      this.strComment = '',
      this.limit = '5',
      this.page = '1',
      this.listPages = const []});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final CommentModule commentModule;
  @override
  final int id;
  @JsonKey(defaultValue: const [])
  @override
  final List<Comments> listComments;
  @JsonKey(defaultValue: '')
  @override
  final String strComment;
  @JsonKey(defaultValue: '5')
  @override
  final String limit;
  @JsonKey(defaultValue: '1')
  @override
  final String page;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> listPages;

  @override
  String toString() {
    return 'CommentsData(isLoading: $isLoading, commentModule: $commentModule, id: $id, listComments: $listComments, strComment: $strComment, limit: $limit, page: $page, listPages: $listPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataComments &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.commentModule, commentModule) ||
                const DeepCollectionEquality()
                    .equals(other.commentModule, commentModule)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.listComments, listComments) ||
                const DeepCollectionEquality()
                    .equals(other.listComments, listComments)) &&
            (identical(other.strComment, strComment) ||
                const DeepCollectionEquality()
                    .equals(other.strComment, strComment)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.listPages, listPages) ||
                const DeepCollectionEquality()
                    .equals(other.listPages, listPages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(commentModule) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(listComments) ^
      const DeepCollectionEquality().hash(strComment) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(listPages);

  @JsonKey(ignore: true)
  @override
  $DataCommentsCopyWith<DataComments> get copyWith =>
      _$DataCommentsCopyWithImpl<DataComments>(this, _$identity);
}

abstract class DataComments implements CommentsData {
  const factory DataComments(
      {bool isLoading,
      required CommentModule commentModule,
      required int id,
      List<Comments> listComments,
      String strComment,
      String limit,
      String page,
      List<String> listPages}) = _$DataComments;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  CommentModule get commentModule => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  List<Comments> get listComments => throw _privateConstructorUsedError;
  @override
  String get strComment => throw _privateConstructorUsedError;
  @override
  String get limit => throw _privateConstructorUsedError;
  @override
  String get page => throw _privateConstructorUsedError;
  @override
  List<String> get listPages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataCommentsCopyWith<DataComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentsStateTearOff {
  const _$CommentsStateTearOff();

  Initial initial(DataComments data) {
    return Initial(
      data,
    );
  }

  Loading loading(DataComments data) {
    return Loading(
      data,
    );
  }

  Loaded loaded(DataComments data) {
    return Loaded(
      data,
    );
  }

  AddComment addComment(DataComments data) {
    return AddComment(
      data,
    );
  }

  GetComments getComments(DataComments data) {
    return GetComments(
      data,
    );
  }

  DeleteComment deleteComment(DataComments data) {
    return DeleteComment(
      data,
    );
  }

  AddCommentFail addCommentFail(DataComments data) {
    return AddCommentFail(
      data,
    );
  }

  AddCommentSuccess addCommentSuccess(DataComments data) {
    return AddCommentSuccess(
      data,
    );
  }

  DeleteCommentFail delCommentFail(DataComments data) {
    return DeleteCommentFail(
      data,
    );
  }

  DeleteCommentSuccess delCommentSuccess(DataComments data) {
    return DeleteCommentSuccess(
      data,
    );
  }
}

/// @nodoc
const $CommentsState = _$CommentsStateTearOff();

/// @nodoc
mixin _$CommentsState {
  DataComments get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsStateCopyWith<CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res>;
  $Res call({DataComments data});
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  final CommentsState _value;
  // ignore: unused_field
  final $Res Function(CommentsState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $CommentsStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
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
              as DataComments,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.initial(data: $data)';
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
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
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
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CommentsState {
  const factory Initial(DataComments data) = _$Initial;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $CommentsStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
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
              as DataComments,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.loading(data: $data)';
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
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
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
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CommentsState {
  const factory Loading(DataComments data) = _$Loading;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $CommentsStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
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
              as DataComments,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.loaded(data: $data)';
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
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
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
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements CommentsState {
  const factory Loaded(DataComments data) = _$Loaded;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory $AddCommentCopyWith(
          AddComment value, $Res Function(AddComment) then) =
      _$AddCommentCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$AddCommentCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
    implements $AddCommentCopyWith<$Res> {
  _$AddCommentCopyWithImpl(AddComment _value, $Res Function(AddComment) _then)
      : super(_value, (v) => _then(v as AddComment));

  @override
  AddComment get _value => super._value as AddComment;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AddComment(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
class _$AddComment implements AddComment {
  const _$AddComment(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.addComment(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddComment &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $AddCommentCopyWith<AddComment> get copyWith =>
      _$AddCommentCopyWithImpl<AddComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return addComment(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class AddComment implements CommentsState {
  const factory AddComment(DataComments data) = _$AddComment;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddCommentCopyWith<AddComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentsCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory $GetCommentsCopyWith(
          GetComments value, $Res Function(GetComments) then) =
      _$GetCommentsCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$GetCommentsCopyWithImpl<$Res> extends _$CommentsStateCopyWithImpl<$Res>
    implements $GetCommentsCopyWith<$Res> {
  _$GetCommentsCopyWithImpl(
      GetComments _value, $Res Function(GetComments) _then)
      : super(_value, (v) => _then(v as GetComments));

  @override
  GetComments get _value => super._value as GetComments;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(GetComments(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
class _$GetComments implements GetComments {
  const _$GetComments(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.getComments(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetComments &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetCommentsCopyWith<GetComments> get copyWith =>
      _$GetCommentsCopyWithImpl<GetComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return getComments(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return getComments(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments(this);
    }
    return orElse();
  }
}

abstract class GetComments implements CommentsState {
  const factory GetComments(DataComments data) = _$GetComments;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GetCommentsCopyWith<GetComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory $DeleteCommentCopyWith(
          DeleteComment value, $Res Function(DeleteComment) then) =
      _$DeleteCommentCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$DeleteCommentCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements $DeleteCommentCopyWith<$Res> {
  _$DeleteCommentCopyWithImpl(
      DeleteComment _value, $Res Function(DeleteComment) _then)
      : super(_value, (v) => _then(v as DeleteComment));

  @override
  DeleteComment get _value => super._value as DeleteComment;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(DeleteComment(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
class _$DeleteComment implements DeleteComment {
  const _$DeleteComment(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.deleteComment(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteComment &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DeleteCommentCopyWith<DeleteComment> get copyWith =>
      _$DeleteCommentCopyWithImpl<DeleteComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return deleteComment(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class DeleteComment implements CommentsState {
  const factory DeleteComment(DataComments data) = _$DeleteComment;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DeleteCommentCopyWith<DeleteComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentFailCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory $AddCommentFailCopyWith(
          AddCommentFail value, $Res Function(AddCommentFail) then) =
      _$AddCommentFailCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$AddCommentFailCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements $AddCommentFailCopyWith<$Res> {
  _$AddCommentFailCopyWithImpl(
      AddCommentFail _value, $Res Function(AddCommentFail) _then)
      : super(_value, (v) => _then(v as AddCommentFail));

  @override
  AddCommentFail get _value => super._value as AddCommentFail;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AddCommentFail(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
class _$AddCommentFail implements AddCommentFail {
  const _$AddCommentFail(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.addCommentFail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddCommentFail &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $AddCommentFailCopyWith<AddCommentFail> get copyWith =>
      _$AddCommentFailCopyWithImpl<AddCommentFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return addCommentFail(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (addCommentFail != null) {
      return addCommentFail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return addCommentFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (addCommentFail != null) {
      return addCommentFail(this);
    }
    return orElse();
  }
}

abstract class AddCommentFail implements CommentsState {
  const factory AddCommentFail(DataComments data) = _$AddCommentFail;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddCommentFailCopyWith<AddCommentFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentSuccessCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory $AddCommentSuccessCopyWith(
          AddCommentSuccess value, $Res Function(AddCommentSuccess) then) =
      _$AddCommentSuccessCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$AddCommentSuccessCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements $AddCommentSuccessCopyWith<$Res> {
  _$AddCommentSuccessCopyWithImpl(
      AddCommentSuccess _value, $Res Function(AddCommentSuccess) _then)
      : super(_value, (v) => _then(v as AddCommentSuccess));

  @override
  AddCommentSuccess get _value => super._value as AddCommentSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AddCommentSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
class _$AddCommentSuccess implements AddCommentSuccess {
  const _$AddCommentSuccess(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.addCommentSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddCommentSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $AddCommentSuccessCopyWith<AddCommentSuccess> get copyWith =>
      _$AddCommentSuccessCopyWithImpl<AddCommentSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return addCommentSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (addCommentSuccess != null) {
      return addCommentSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return addCommentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (addCommentSuccess != null) {
      return addCommentSuccess(this);
    }
    return orElse();
  }
}

abstract class AddCommentSuccess implements CommentsState {
  const factory AddCommentSuccess(DataComments data) = _$AddCommentSuccess;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddCommentSuccessCopyWith<AddCommentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentFailCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory $DeleteCommentFailCopyWith(
          DeleteCommentFail value, $Res Function(DeleteCommentFail) then) =
      _$DeleteCommentFailCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$DeleteCommentFailCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements $DeleteCommentFailCopyWith<$Res> {
  _$DeleteCommentFailCopyWithImpl(
      DeleteCommentFail _value, $Res Function(DeleteCommentFail) _then)
      : super(_value, (v) => _then(v as DeleteCommentFail));

  @override
  DeleteCommentFail get _value => super._value as DeleteCommentFail;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(DeleteCommentFail(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
class _$DeleteCommentFail implements DeleteCommentFail {
  const _$DeleteCommentFail(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.delCommentFail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteCommentFail &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DeleteCommentFailCopyWith<DeleteCommentFail> get copyWith =>
      _$DeleteCommentFailCopyWithImpl<DeleteCommentFail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return delCommentFail(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (delCommentFail != null) {
      return delCommentFail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return delCommentFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (delCommentFail != null) {
      return delCommentFail(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentFail implements CommentsState {
  const factory DeleteCommentFail(DataComments data) = _$DeleteCommentFail;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DeleteCommentFailCopyWith<DeleteCommentFail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentSuccessCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory $DeleteCommentSuccessCopyWith(DeleteCommentSuccess value,
          $Res Function(DeleteCommentSuccess) then) =
      _$DeleteCommentSuccessCopyWithImpl<$Res>;
  @override
  $Res call({DataComments data});
}

/// @nodoc
class _$DeleteCommentSuccessCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res>
    implements $DeleteCommentSuccessCopyWith<$Res> {
  _$DeleteCommentSuccessCopyWithImpl(
      DeleteCommentSuccess _value, $Res Function(DeleteCommentSuccess) _then)
      : super(_value, (v) => _then(v as DeleteCommentSuccess));

  @override
  DeleteCommentSuccess get _value => super._value as DeleteCommentSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(DeleteCommentSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataComments,
    ));
  }
}

/// @nodoc
class _$DeleteCommentSuccess implements DeleteCommentSuccess {
  const _$DeleteCommentSuccess(this.data);

  @override
  final DataComments data;

  @override
  String toString() {
    return 'CommentsState.delCommentSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteCommentSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DeleteCommentSuccessCopyWith<DeleteCommentSuccess> get copyWith =>
      _$DeleteCommentSuccessCopyWithImpl<DeleteCommentSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataComments data) initial,
    required TResult Function(DataComments data) loading,
    required TResult Function(DataComments data) loaded,
    required TResult Function(DataComments data) addComment,
    required TResult Function(DataComments data) getComments,
    required TResult Function(DataComments data) deleteComment,
    required TResult Function(DataComments data) addCommentFail,
    required TResult Function(DataComments data) addCommentSuccess,
    required TResult Function(DataComments data) delCommentFail,
    required TResult Function(DataComments data) delCommentSuccess,
  }) {
    return delCommentSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataComments data)? initial,
    TResult Function(DataComments data)? loading,
    TResult Function(DataComments data)? loaded,
    TResult Function(DataComments data)? addComment,
    TResult Function(DataComments data)? getComments,
    TResult Function(DataComments data)? deleteComment,
    TResult Function(DataComments data)? addCommentFail,
    TResult Function(DataComments data)? addCommentSuccess,
    TResult Function(DataComments data)? delCommentFail,
    TResult Function(DataComments data)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (delCommentSuccess != null) {
      return delCommentSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(AddComment value) addComment,
    required TResult Function(GetComments value) getComments,
    required TResult Function(DeleteComment value) deleteComment,
    required TResult Function(AddCommentFail value) addCommentFail,
    required TResult Function(AddCommentSuccess value) addCommentSuccess,
    required TResult Function(DeleteCommentFail value) delCommentFail,
    required TResult Function(DeleteCommentSuccess value) delCommentSuccess,
  }) {
    return delCommentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(AddComment value)? addComment,
    TResult Function(GetComments value)? getComments,
    TResult Function(DeleteComment value)? deleteComment,
    TResult Function(AddCommentFail value)? addCommentFail,
    TResult Function(AddCommentSuccess value)? addCommentSuccess,
    TResult Function(DeleteCommentFail value)? delCommentFail,
    TResult Function(DeleteCommentSuccess value)? delCommentSuccess,
    required TResult orElse(),
  }) {
    if (delCommentSuccess != null) {
      return delCommentSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentSuccess implements CommentsState {
  const factory DeleteCommentSuccess(DataComments data) =
      _$DeleteCommentSuccess;

  @override
  DataComments get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DeleteCommentSuccessCopyWith<DeleteCommentSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
