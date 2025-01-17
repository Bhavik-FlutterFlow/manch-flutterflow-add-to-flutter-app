// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostStruct extends BaseStruct {
  PostStruct({
    int? id,
    int? createdAt,
    String? post,
    String? userName,
    int? userId,
  })  : _id = id,
        _createdAt = createdAt,
        _post = post,
        _userName = userName,
        _userId = userId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "post" field.
  String? _post;
  String get post => _post ?? '';
  set post(String? val) => _post = val;

  bool hasPost() => _post != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  static PostStruct fromMap(Map<String, dynamic> data) => PostStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        post: data['post'] as String?,
        userName: data['user_name'] as String?,
        userId: castToType<int>(data['user_id']),
      );

  static PostStruct? maybeFromMap(dynamic data) =>
      data is Map ? PostStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'post': _post,
        'user_name': _userName,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'post': serializeParam(
          _post,
          ParamType.String,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static PostStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        post: deserializeParam(
          data['post'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        post == other.post &&
        userName == other.userName &&
        userId == other.userId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, post, userName, userId]);
}

PostStruct createPostStruct({
  int? id,
  int? createdAt,
  String? post,
  String? userName,
  int? userId,
}) =>
    PostStruct(
      id: id,
      createdAt: createdAt,
      post: post,
      userName: userName,
      userId: userId,
    );
