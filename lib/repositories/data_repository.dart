import 'dart:io';

import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/locator.dart';
import 'package:bodidatacms/model/audit/audit_session_detail_response.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/audit/audit_session_response.dart';
import 'package:bodidatacms/model/audit/audit_update_style_profile_request.dart';
import 'package:bodidatacms/model/base_response.dart';
import 'package:bodidatacms/model/comments/add_comment_response.dart';
import 'package:bodidatacms/model/comments/conment_response.dart';
import 'package:bodidatacms/model/group/get_all_group_response.dart';
import 'package:bodidatacms/model/group/group_response.dart';
import 'package:bodidatacms/model/group/group_request.dart';
import 'package:bodidatacms/model/group/update_group_request.dart';
import 'package:bodidatacms/model/group/update_group_response.dart';
import 'package:bodidatacms/model/inventory/attachment_response.dart';
import 'package:bodidatacms/model/inventory/attachments_response.dart';
import 'package:bodidatacms/model/inventory/categories_modal.dart';
import 'package:bodidatacms/model/inventory/style_details_response.dart';
import 'package:bodidatacms/model/inventory/style_request.dart';
import 'package:bodidatacms/model/inventory/styles_response.dart';
import 'package:bodidatacms/model/inventory_permission/style_permissions.dart';
import 'package:bodidatacms/model/inventory_permission/update_permission_request.dart';
import 'package:bodidatacms/model/inventory_permission/update_permission_response.dart';
import 'package:bodidatacms/model/login/login_request.dart';
import 'package:bodidatacms/model/login/login_response.dart';
import 'package:bodidatacms/model/profile/delete_profile_response.dart';
import 'package:bodidatacms/model/profile/gender_response.dart';
import 'package:bodidatacms/model/profile/hip_shape_response.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/model/profile/new_profile_response.dart';
import 'package:bodidatacms/model/profile/profile_detail_response.dart';
import 'package:bodidatacms/model/profile/profile_response.dart';
import 'package:bodidatacms/model/register/register_response.dart';
import 'package:bodidatacms/model/register/register_request.dart';
import 'package:bodidatacms/model/size_chart_editor/request_size.dart';
import 'package:bodidatacms/model/user/all_user_response.dart';
import 'package:bodidatacms/model/user/param_request_user.dart';
import 'package:bodidatacms/network/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DataRepository implements RestClient {
  final dio = Dio();
  late RestClient _client;

  DataRepository() {
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    _client = RestClient(dio, baseUrl: BASE_URL);
    setHeader();
  }

  Future<void> setHeader() async {
    dio.options.headers["Authorization"] = "Bearer " + locator<AppPref>().token;
    dio.options.headers["Accept"] = "application/json";
  }

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) {
    return _client.login(loginRequest);
  }

  @override
  Future<RegisterReponse> register(RegisterRequest registerRequest) {
    return _client.register(registerRequest);
  }

  @override
  Future<GroupResponse> createGroup(GroupRequest groupRequest) {
    return _client.createGroup(groupRequest);
  }

  @override
  Future<AllGroupResponse> getAllGroup() {
    return _client.getAllGroup();
  }

  @override
  Future<AllUserResponse> getAllUser(ParamsRequestUser paramsRequestUser) {
    return _client.getAllUser(paramsRequestUser);
  }

  Future<ProfileResponse> getListProfile(
      String limt, String page, String search, String gender, String hashtag) {
    return _client.getListProfile(limt, page, search, gender, hashtag);
  }

  @override
  Future<GenderResponse> getListGender() {
    return _client.getListGender();
  }

  @override
  Future<HipShapeResponse> getListHipShape() {
    return _client.getListHipShape();
  }

  @override
  Future<NewProfileResponse> createProfile(ProfileRequest profileRequest) {
    return _client.createProfile(profileRequest);
  }

  @override
  Future<NewProfileResponse> updateProfile(
      String id, ProfileRequest profileRequest) {
    return _client.updateProfile(id, profileRequest);
  }

  @override
  Future<ProfileDetailResponse> getProfileDetails(int profileID) {
    return _client.getProfileDetails(profileID);
  }

  Future<UpdateGroupResponse> updateGroup(
      int idGroup, UpdateGroupRequest updateGroupRequest) {
    return _client.updateGroup(idGroup, updateGroupRequest);
  }

  @override
  Future<AllGroupResponse> getAllGroupInUser(int userId) {
    return _client.getAllGroupInUser(userId);
  }

  @override
  Future<CommentResponse> getComments(
      {String? limit, String? module, String? page, String? id}) {
    return _client.getComments(
      limit: limit ?? '',
      module: module ?? 'style',
      page: page ?? '',
      id: id ?? '',
    );
  }

  @override
  Future<AddCommentResponse> addComment({
    int? id,
    String? module,
    String? content,
    String? subContent,
    String? type,
  }) {
    return _client.addComment(
      id: id ?? 0,
      module: module ?? 'style',
      content: content ?? '',
      subContent: subContent ?? '',
      type: type ?? 'text',
    );
  }

  @override
  Future<CommentResponse> deleteComment({int? commentId}) {
    return _client.deleteComment(commentId: commentId ?? 0);
  }

  @override
  Future<StylesResponse> getStyles(
    String limit,
    String currentPage,
    String categoriesSearch,
    String brandSearch,
    String searchKey,
  ) {
    return _client.getStyles(
        limit, currentPage, categoriesSearch, brandSearch, searchKey);
  }

  @override
  Future<CategoriesModal> getCategories() {
    return _client.getCategories();
  }

  Future<DeleteProfileResponse> deleteProfile(int profileId) {
    return _client.deleteProfile(profileId);
  }

  @override
  Future<AttachmentResponse> uploadAttachment(int idStyle, File files) {
    return _client.uploadAttachment(
      idStyle,
      files,
    );
  }

  @override
  Future<AttachmentsResponse> getAttachment(int idStyle) {
    return _client.getAttachment(idStyle);
  }

  Future<StyleDetailResponse> getStyleDetails(int styleId) {
    return _client.getStyleDetails(styleId);
  }

  @override
  Future<AuditSessionResponse> getAuditSession(
      String styles, String profiles, String search) {
    return _client.getAuditSession(styles, profiles, search);
  }

  Future<StylePermissions> getStylePermission(int styleId) {
    return _client.getStylePermission(styleId);
  }

  @override
  Future<UpdatePermissionResponse> updateStylePermission(
      int styleId, UpdatePermissionRequest updatePermissionRequest) {
    return _client.updateStylePermission(styleId, updatePermissionRequest);
  }

  Future<BaseResponse> updateSize(int styleId, RequestSize requestSize) {
    return _client.updateSize(styleId, requestSize);
  }

  @override
  Future<BaseResponse> addNewStyle(StyleRequest requestStyle) {
    return _client.addNewStyle(requestStyle);
  }

  @override
  Future<BaseResponse> updateStyle(int styleId, StyleRequest requestStyle) {
    return _client.updateStyle(styleId, requestStyle);
  }

  @override
  Future<AuditSessionDetailResponse> getAuditSessionDetail(int id) {
    return _client.getAuditSessionDetail(id);
  }

  @override
  Future<AuditSessionDetailResponse> createAuditRecord(
      AuditSessionRecordRequest auditSessionRecordRequest) {
    return _client.createAuditRecord(auditSessionRecordRequest);
  }

  @override
  Future<AuditSessionDetailResponse> updateAuditRecord(
      int auditId, AuditSessionRecordRequest auditSessionRecordRequest) {
    return _client.updateAuditRecord(auditId, auditSessionRecordRequest);
  }

  @override
  Future<AuditSessionDetailResponse> updateAuditRecordPut(
      int auditId, AuditSessionRecordRequest auditSessionRecordRequest) {
    return _client.updateAuditRecordPut(auditId, auditSessionRecordRequest);
  }

  @override
  Future<AuditSessionDetailResponse> updatesStyleProfile(
      int auditId, AuditUpdateStyleProfileRequest auditSessionRecordRequest) {
    return _client.updatesStyleProfile(auditId, auditSessionRecordRequest);
  }
}
