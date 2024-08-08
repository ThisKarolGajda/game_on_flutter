// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_basic_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserBasicDataModel _$UserBasicDataModelFromJson(Map<String, dynamic> json) {
  return _UserBasicDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserBasicDataModel {
  String get nickname => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBasicDataModelCopyWith<UserBasicDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBasicDataModelCopyWith<$Res> {
  factory $UserBasicDataModelCopyWith(
          UserBasicDataModel value, $Res Function(UserBasicDataModel) then) =
      _$UserBasicDataModelCopyWithImpl<$Res, UserBasicDataModel>;
  @useResult
  $Res call({String nickname, String uuid});
}

/// @nodoc
class _$UserBasicDataModelCopyWithImpl<$Res, $Val extends UserBasicDataModel>
    implements $UserBasicDataModelCopyWith<$Res> {
  _$UserBasicDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBasicDataModelImplCopyWith<$Res>
    implements $UserBasicDataModelCopyWith<$Res> {
  factory _$$UserBasicDataModelImplCopyWith(_$UserBasicDataModelImpl value,
          $Res Function(_$UserBasicDataModelImpl) then) =
      __$$UserBasicDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname, String uuid});
}

/// @nodoc
class __$$UserBasicDataModelImplCopyWithImpl<$Res>
    extends _$UserBasicDataModelCopyWithImpl<$Res, _$UserBasicDataModelImpl>
    implements _$$UserBasicDataModelImplCopyWith<$Res> {
  __$$UserBasicDataModelImplCopyWithImpl(_$UserBasicDataModelImpl _value,
      $Res Function(_$UserBasicDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? uuid = null,
  }) {
    return _then(_$UserBasicDataModelImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBasicDataModelImpl implements _UserBasicDataModel {
  const _$UserBasicDataModelImpl({required this.nickname, required this.uuid});

  factory _$UserBasicDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBasicDataModelImplFromJson(json);

  @override
  final String nickname;
  @override
  final String uuid;

  @override
  String toString() {
    return 'UserBasicDataModel(nickname: $nickname, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBasicDataModelImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBasicDataModelImplCopyWith<_$UserBasicDataModelImpl> get copyWith =>
      __$$UserBasicDataModelImplCopyWithImpl<_$UserBasicDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBasicDataModelImplToJson(
      this,
    );
  }
}

abstract class _UserBasicDataModel implements UserBasicDataModel {
  const factory _UserBasicDataModel(
      {required final String nickname,
      required final String uuid}) = _$UserBasicDataModelImpl;

  factory _UserBasicDataModel.fromJson(Map<String, dynamic> json) =
      _$UserBasicDataModelImpl.fromJson;

  @override
  String get nickname;
  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$UserBasicDataModelImplCopyWith<_$UserBasicDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
