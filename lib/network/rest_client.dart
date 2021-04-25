import 'dart:io';
import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/model/audit/audit_session_detail_response.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/audit/audit_update_style_profile_request.dart';
import 'package:bodidatacms/model/base_response.dart';
import 'package:bodidatacms/model/comments/add_comment_response.dart';
import 'package:bodidatacms/model/comments/conment_response.dart';
import 'package:bodidatacms/model/group/get_all_group_response.dart';
import 'package:bodidatacms/model/group/group_request.dart';
import 'package:bodidatacms/model/group/group_response.dart';
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
import 'package:bodidatacms/model/profile/new_profile_response.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/model/profile/profile_detail_response.dart';
import 'package:bodidatacms/model/profile/profile_response.dart';
import 'package:bodidatacms/model/register/register_request.dart';
import 'package:bodidatacms/model/register/register_response.dart';
import 'package:bodidatacms/model/size_chart_editor/request_size.dart';
import 'package:bodidatacms/model/user/all_user_response.dart';
import 'package:bodidatacms/model/user/param_request_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';

import '../model/audit/audit_session_response.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("api/auth/login")
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  @POST("api/auth/register")
  Future<RegisterReponse> register(@Body() RegisterRequest registerRequest);

  @POST("api/groups")
  Future<GroupResponse> createGroup(@Body() GroupRequest groupRequest);

  @GET("api/groups")
  Future<AllGroupResponse> getAllGroup();

  @GET("api/users")
  Future<AllUserResponse> getAllUser(
      @Queries() ParamsRequestUser paramsRequestUser);

  @GET(
      "api/profile/filter?limit={limt}&page={page}&search={search}&gender={gender}&hashtags={hashtags}")
  Future<ProfileResponse> getListProfile(
      @Path('limt') String limt,
      @Path('page') String page,
      @Path('search') String search,
      @Path('gender') String gender,
      @Path('hashtags') String hashtag);

  @GET("/api/gender")
  Future<GenderResponse> getListGender();

  @GET("/api/profile/hipshapes")
  Future<HipShapeResponse> getListHipShape();

  @POST("/api/profile/create")
  Future<NewProfileResponse> createProfile(
      @Body() ProfileRequest profileRequest);

  @PATCH("api/profile/update/{id}")
  Future<NewProfileResponse> updateProfile(
      @Path('id') String id, @Body() ProfileRequest profileRequest);

  @GET("api/profile/{profile_id}")
  Future<ProfileDetailResponse> getProfileDetails(
      @Path('profile_id') int profileID);

  @POST("api/groups/{idGroup}")
  Future<UpdateGroupResponse> updateGroup(@Path('idGroup') int idGroup,
      @Body() UpdateGroupRequest updateGroupRequest);

  @GET("api/groups?user_id={user_id}")
  Future<AllGroupResponse> getAllGroupInUser(@Path('user_id') int userId);

  @GET("api/comments?limit={limit}&module={module}&page={page}&id={id}")
  Future<CommentResponse> getComments(
      {@Path('limit') String? limit,
      @Path('module') String? module,
      @Path('page') String? page,
      @Path('id') String? id});

  @POST("api/comments?id={id}&module={module}")
  Future<AddCommentResponse> addComment({
    @Path('id') int? id,
    @Path('module') String? module,
    @Field('content') String? content,
    @Field('sub_content') String? subContent,
    @Field('type') String? type,
  });

  @DELETE("api/comments/{comment_id}")
  Future<CommentResponse> deleteComment({@Path('comment_id') int? commentId});

  @GET(
      "api/styles/?limit={limit}&page={page}&categories={categories}&brand={brand}&search={searchKey}")
  Future<StylesResponse> getStyles(
    @Path('limit') String limit,
    @Path('page') String currentPage,
    @Path('categories') String categoriesSearch,
    @Path('brand') String brandSearch,
    @Path('searchKey') String searchKey,
  );

  @GET("api/category")
  Future<CategoriesModal> getCategories();

  @DELETE("api/profile/delete/{profile_id}")
  Future<DeleteProfileResponse> deleteProfile(
      @Path('profile_id') int profileId);

  @POST("api/styles/{id_style}/attachment")
  Future<AttachmentResponse> uploadAttachment(
      @Path('id_style') int idStyle, @Part() File file);

  @GET("api/styles/{id_style}/attachment")
  Future<AttachmentsResponse> getAttachment(@Path('id_style') int idStyle);

  @GET("api/styles/{style_id}")
  Future<StyleDetailResponse> getStyleDetails(@Path('style_id') int styleId);

  @GET("api/audit/sessions?styles={styles}&profiles={profiles}&search={search}")
  Future<AuditSessionResponse> getAuditSession(
    @Path('styles') String styles,
    @Path('profiles') String profiles,
    @Path('search') String search,
  );
  @GET("api/audit/sessions/{id}")
  Future<AuditSessionDetailResponse> getAuditSessionDetail(@Path('id') int id);

  @GET("api/styles/{style_id}/permissions")
  Future<StylePermissions> getStylePermission(@Path('style_id') int styleId);

  @PATCH("api/styles/{style_id}/permissions")
  Future<UpdatePermissionResponse> updateStylePermission(
    @Path('style_id') int styleId,
    @Body() UpdatePermissionRequest updatePermissionReques,
  );
  @PATCH("api/styles/{style_id}")
  Future<BaseResponse> updateSize(
      @Path('style_id') int styleId, @Body() RequestSize requestSize);

  @POST("api/styles")
  Future<BaseResponse> addNewStyle(@Body() StyleRequest requestSize);

  @PUT("api/styles/{style_id}")
  Future<BaseResponse> updateStyle(
      @Path('style_id') int styleId, @Body() StyleRequest requestSize);

  @POST("api/audit/records")
  Future<AuditSessionDetailResponse> createAuditRecord(
      @Body() AuditSessionRecordRequest auditSessionRecordRequest);

  @PUT("api/audit/records/{audit_id}")
  Future<AuditSessionDetailResponse> updateAuditRecordPut(
      @Path('audit_id') int auditId,
      @Body() AuditSessionRecordRequest auditSessionRecordRequest);

  @POST("api/audit/records/{audit_id}")
  Future<AuditSessionDetailResponse> updateAuditRecord(
      @Path('audit_id') int auditId,
      @Body() AuditSessionRecordRequest auditSessionRecordRequest);

  @PATCH("api/audit/records/{audit_id}")
  Future<AuditSessionDetailResponse> updatesStyleProfile(
      @Path('audit_id') int auditId,
      @Body() AuditUpdateStyleProfileRequest auditSessionRecordRequest);
}
