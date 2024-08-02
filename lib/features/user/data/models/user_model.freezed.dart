// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  UserId get id => throw _privateConstructorUsedError;
  bool get online => throw _privateConstructorUsedError;
  UserPrivilegeType get privilege => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({UserId id, bool online, UserPrivilegeType privilege});

  $UserIdCopyWith<$Res> get id;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? online = null,
    Object? privilege = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      privilege: null == privilege
          ? _value.privilege
          : privilege // ignore: cast_nullable_to_non_nullable
              as UserPrivilegeType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdCopyWith<$Res> get id {
    return $UserIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserId id, bool online, UserPrivilegeType privilege});

  @override
  $UserIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? online = null,
    Object? privilege = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserId,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      privilege: null == privilege
          ? _value.privilege
          : privilege // ignore: cast_nullable_to_non_nullable
              as UserPrivilegeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id, required this.online, required this.privilege});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final UserId id;
  @override
  final bool online;
  @override
  final UserPrivilegeType privilege;

  @override
  String toString() {
    return 'UserModel(id: $id, online: $online, privilege: $privilege)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.privilege, privilege) ||
                other.privilege == privilege));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, online, privilege);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final UserId id,
      required final bool online,
      required final UserPrivilegeType privilege}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  UserId get id;
  @override
  bool get online;
  @override
  UserPrivilegeType get privilege;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  String get uuid => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdCopyWith<UserId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdCopyWith<$Res> {
  factory $UserIdCopyWith(UserId value, $Res Function(UserId) then) =
      _$UserIdCopyWithImpl<$Res, UserId>;
  @useResult
  $Res call({String uuid, String username});
}

/// @nodoc
class _$UserIdCopyWithImpl<$Res, $Val extends UserId>
    implements $UserIdCopyWith<$Res> {
  _$UserIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIdImplCopyWith<$Res> implements $UserIdCopyWith<$Res> {
  factory _$$UserIdImplCopyWith(
          _$UserIdImpl value, $Res Function(_$UserIdImpl) then) =
      __$$UserIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String username});
}

/// @nodoc
class __$$UserIdImplCopyWithImpl<$Res>
    extends _$UserIdCopyWithImpl<$Res, _$UserIdImpl>
    implements _$$UserIdImplCopyWith<$Res> {
  __$$UserIdImplCopyWithImpl(
      _$UserIdImpl _value, $Res Function(_$UserIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_$UserIdImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl({required this.uuid, required this.username});

  factory _$UserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdImplFromJson(json);

  @override
  final String uuid;
  @override
  final String username;

  @override
  String toString() {
    return 'UserId(uuid: $uuid, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      __$$UserIdImplCopyWithImpl<_$UserIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdImplToJson(
      this,
    );
  }
}

abstract class _UserId implements UserId {
  const factory _UserId(
      {required final String uuid,
      required final String username}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  String get uuid;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
