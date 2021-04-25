part of 'comments_cubit.dart';

@freezed
class CommentsData with _$CommentsData {
  const factory CommentsData({
    @Default(false) bool isLoading,
    required CommentModule commentModule,
    required int id,
    @Default([]) List<Comments> listComments,
    @Default('') String strComment,
    @Default('5') String limit,
    @Default('1') String page,
    @Default([]) List<String> listPages,
  }) = DataComments;
}

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.initial(DataComments data) = Initial;
  const factory CommentsState.loading(DataComments data) = Loading;
  const factory CommentsState.loaded(DataComments data) = Loaded;
  const factory CommentsState.addComment(DataComments data) = AddComment;
  const factory CommentsState.getComments(DataComments data) = GetComments;
  const factory CommentsState.deleteComment(DataComments data) = DeleteComment;
  const factory CommentsState.addCommentFail(DataComments data) =
      AddCommentFail;
  const factory CommentsState.addCommentSuccess(DataComments data) =
      AddCommentSuccess;
  const factory CommentsState.delCommentFail(DataComments data) =
      DeleteCommentFail;
  const factory CommentsState.delCommentSuccess(DataComments data) =
      DeleteCommentSuccess;
}
