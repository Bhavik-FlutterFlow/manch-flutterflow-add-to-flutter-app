import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';

import 'package:ff_commons/api_requests/api_paging_params.dart';

export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String getBaseUrl() =>
      'https://x8ki-letl-twmt.n7.xano.io/api:GgvDRi3w';
  static Map<String, String> headers = {};
  static LoginAndRetrieveAnAuthenticationTokenCall
      loginAndRetrieveAnAuthenticationTokenCall =
      LoginAndRetrieveAnAuthenticationTokenCall();
  static GetTheUserRecordBelongingToTheAuthenticationTokenCall
      getTheUserRecordBelongingToTheAuthenticationTokenCall =
      GetTheUserRecordBelongingToTheAuthenticationTokenCall();
  static SignupAndRetrieveAnAuthenticationTokenCall
      signupAndRetrieveAnAuthenticationTokenCall =
      SignupAndRetrieveAnAuthenticationTokenCall();
  static DeletePostRecordCall deletePostRecordCall = DeletePostRecordCall();
  static GetPostRecordCall getPostRecordCall = GetPostRecordCall();
  static EditPostRecordCall editPostRecordCall = EditPostRecordCall();
  static QueryAllPostRecordsCall queryAllPostRecordsCall =
      QueryAllPostRecordsCall();
  static AddPostRecordCall addPostRecordCall = AddPostRecordCall();
}

class LoginAndRetrieveAnAuthenticationTokenCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login and retrieve an authentication token',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTheUserRecordBelongingToTheAuthenticationTokenCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get the user record belonging to the authentication token',
      apiUrl: '${baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupAndRetrieveAnAuthenticationTokenCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "",
  "email": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup and retrieve an authentication token',
      apiUrl: '${baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePostRecordCall {
  Future<ApiCallResponse> call({
    int? postId,
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete post record.',
      apiUrl: '${baseUrl}/post/${postId}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPostRecordCall {
  Future<ApiCallResponse> call({
    int? postId,
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get post record',
      apiUrl: '${baseUrl}/post/${postId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditPostRecordCall {
  Future<ApiCallResponse> call({
    int? postId,
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "post": "",
  "user_name": "",
  "user_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit post record',
      apiUrl: '${baseUrl}/post/${postId}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllPostRecordsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Query all post records',
      apiUrl: '${baseUrl}/post',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPostRecordCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "post": "",
  "user_name": "",
  "user_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add post record',
      apiUrl: '${baseUrl}/post',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Authentication Group Code

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
