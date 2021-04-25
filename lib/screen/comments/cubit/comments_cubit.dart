import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/comments/comment.dart';
import 'package:bodidatacms/model/pagination/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bodidatacms/common/extensions.dart';
import 'package:get/get.dart';
part 'comments_state.dart';
part 'comments_cubit.freezed.dart';

class CommentsCubit extends BaseCubit<CommentsState> {
  CommentsCubit(
    CommentModule commentModule,
    int id,
  ) : super(Initial(DataComments(commentModule: commentModule, id: id)));

  @override
  void initData() {
    getComments();
    super.initData();
  }

  void getComments() async {
    try {
      if (state.data.id != -1) {
        String limit = state.data.limit;
        limit = limit == "all" ? "" : limit;
        final response = await dataRepository.getComments(
            page: state.data.page,
            module: state.data.commentModule.toShortString(),
            limit: limit,
            id: state.data.id.toString());
        if (response.data != null && response.success!) {
          response.data!.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
          getListPage(response.pagination!);
          emit(Loaded(state.data.copyWith(listComments: response.data ?? [])));
        }
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void addComment(String strCmt, String subContent) async {
    try {
      if (state.data.id == -1) {
        handleAppError('add_comment_before'.tr);
        return;
      }
      emit(Loading(state.data.copyWith(isLoading: true)));

      final response = await dataRepository.addComment(
          id: state.data.id,
          module: state.data.commentModule.toShortString(),
          type: 'text',
          content: strCmt,
          subContent: 'add a comment');
      if (response.data != null) {
        getComments();
        emit(AddCommentSuccess(state.data.copyWith(isLoading: false)));
      } else {
        emit(AddCommentFail(state.data.copyWith(isLoading: false)));
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      handleAppError(e);
    }
  }

  void deleteComment({required int commentId}) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final response = await dataRepository.deleteComment(commentId: commentId);
      if (response.data != null && response.success!) {
        getComments();
        emit(DeleteCommentSuccess(state.data.copyWith(isLoading: false)));
      } else {
        emit(DeleteCommentFail(state.data.copyWith(isLoading: false)));
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      handleAppError(e);
    }
  }

  void changeLimit(String limit) {
    emit(Loaded(state.data.copyWith(limit: limit, page: "1")));
    getComments();
  }

  void changePage(String page) {
    emit(Loaded(state.data.copyWith(page: page)));
    getComments();
  }

  void getListPage(Pagination pagination) {
    List<String> listPage = [];
    for (int i = 1; i <= pagination.totalPage!; i++) {
      listPage.add(i.toString());
    }
    emit(Loaded(state.data.copyWith(listPages: listPage)));
  }
}
