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
  UserModelUserId get userId => throw _privateConstructorUsedError;
  List<UserModelPlayerDeath> get playerDeaths =>
      throw _privateConstructorUsedError;
  List<UserModelPlayerKill> get playerKills =>
      throw _privateConstructorUsedError;
  UserModelPlayerReputation get playerReputation =>
      throw _privateConstructorUsedError;
  List<UserModelPlayerActivity> get playerActivities =>
      throw _privateConstructorUsedError;
  DateTime get firstJoinDate => throw _privateConstructorUsedError;
  DateTime get lastJoinDate => throw _privateConstructorUsedError;
  DateTime get lastQuitDate => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {UserModelUserId userId,
      List<UserModelPlayerDeath> playerDeaths,
      List<UserModelPlayerKill> playerKills,
      UserModelPlayerReputation playerReputation,
      List<UserModelPlayerActivity> playerActivities,
      DateTime firstJoinDate,
      DateTime lastJoinDate,
      DateTime lastQuitDate});

  $UserModelUserIdCopyWith<$Res> get userId;
  $UserModelPlayerReputationCopyWith<$Res> get playerReputation;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? playerDeaths = null,
    Object? playerKills = null,
    Object? playerReputation = null,
    Object? playerActivities = null,
    Object? firstJoinDate = null,
    Object? lastJoinDate = null,
    Object? lastQuitDate = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserModelUserId,
      playerDeaths: null == playerDeaths
          ? _value.playerDeaths
          : playerDeaths // ignore: cast_nullable_to_non_nullable
              as List<UserModelPlayerDeath>,
      playerKills: null == playerKills
          ? _value.playerKills
          : playerKills // ignore: cast_nullable_to_non_nullable
              as List<UserModelPlayerKill>,
      playerReputation: null == playerReputation
          ? _value.playerReputation
          : playerReputation // ignore: cast_nullable_to_non_nullable
              as UserModelPlayerReputation,
      playerActivities: null == playerActivities
          ? _value.playerActivities
          : playerActivities // ignore: cast_nullable_to_non_nullable
              as List<UserModelPlayerActivity>,
      firstJoinDate: null == firstJoinDate
          ? _value.firstJoinDate
          : firstJoinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastJoinDate: null == lastJoinDate
          ? _value.lastJoinDate
          : lastJoinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastQuitDate: null == lastQuitDate
          ? _value.lastQuitDate
          : lastQuitDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelUserIdCopyWith<$Res> get userId {
    return $UserModelUserIdCopyWith<$Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelPlayerReputationCopyWith<$Res> get playerReputation {
    return $UserModelPlayerReputationCopyWith<$Res>(_value.playerReputation,
        (value) {
      return _then(_value.copyWith(playerReputation: value) as $Val);
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
  $Res call(
      {UserModelUserId userId,
      List<UserModelPlayerDeath> playerDeaths,
      List<UserModelPlayerKill> playerKills,
      UserModelPlayerReputation playerReputation,
      List<UserModelPlayerActivity> playerActivities,
      DateTime firstJoinDate,
      DateTime lastJoinDate,
      DateTime lastQuitDate});

  @override
  $UserModelUserIdCopyWith<$Res> get userId;
  @override
  $UserModelPlayerReputationCopyWith<$Res> get playerReputation;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? playerDeaths = null,
    Object? playerKills = null,
    Object? playerReputation = null,
    Object? playerActivities = null,
    Object? firstJoinDate = null,
    Object? lastJoinDate = null,
    Object? lastQuitDate = null,
  }) {
    return _then(_$UserModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserModelUserId,
      playerDeaths: null == playerDeaths
          ? _value._playerDeaths
          : playerDeaths // ignore: cast_nullable_to_non_nullable
              as List<UserModelPlayerDeath>,
      playerKills: null == playerKills
          ? _value._playerKills
          : playerKills // ignore: cast_nullable_to_non_nullable
              as List<UserModelPlayerKill>,
      playerReputation: null == playerReputation
          ? _value.playerReputation
          : playerReputation // ignore: cast_nullable_to_non_nullable
              as UserModelPlayerReputation,
      playerActivities: null == playerActivities
          ? _value._playerActivities
          : playerActivities // ignore: cast_nullable_to_non_nullable
              as List<UserModelPlayerActivity>,
      firstJoinDate: null == firstJoinDate
          ? _value.firstJoinDate
          : firstJoinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastJoinDate: null == lastJoinDate
          ? _value.lastJoinDate
          : lastJoinDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastQuitDate: null == lastQuitDate
          ? _value.lastQuitDate
          : lastQuitDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {required this.userId,
      required final List<UserModelPlayerDeath> playerDeaths,
      required final List<UserModelPlayerKill> playerKills,
      required this.playerReputation,
      required final List<UserModelPlayerActivity> playerActivities,
      required this.firstJoinDate,
      required this.lastJoinDate,
      required this.lastQuitDate})
      : _playerDeaths = playerDeaths,
        _playerKills = playerKills,
        _playerActivities = playerActivities,
        super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final UserModelUserId userId;
  final List<UserModelPlayerDeath> _playerDeaths;
  @override
  List<UserModelPlayerDeath> get playerDeaths {
    if (_playerDeaths is EqualUnmodifiableListView) return _playerDeaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerDeaths);
  }

  final List<UserModelPlayerKill> _playerKills;
  @override
  List<UserModelPlayerKill> get playerKills {
    if (_playerKills is EqualUnmodifiableListView) return _playerKills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerKills);
  }

  @override
  final UserModelPlayerReputation playerReputation;
  final List<UserModelPlayerActivity> _playerActivities;
  @override
  List<UserModelPlayerActivity> get playerActivities {
    if (_playerActivities is EqualUnmodifiableListView)
      return _playerActivities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerActivities);
  }

  @override
  final DateTime firstJoinDate;
  @override
  final DateTime lastJoinDate;
  @override
  final DateTime lastQuitDate;

  @override
  String toString() {
    return 'UserModel(userId: $userId, playerDeaths: $playerDeaths, playerKills: $playerKills, playerReputation: $playerReputation, playerActivities: $playerActivities, firstJoinDate: $firstJoinDate, lastJoinDate: $lastJoinDate, lastQuitDate: $lastQuitDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._playerDeaths, _playerDeaths) &&
            const DeepCollectionEquality()
                .equals(other._playerKills, _playerKills) &&
            (identical(other.playerReputation, playerReputation) ||
                other.playerReputation == playerReputation) &&
            const DeepCollectionEquality()
                .equals(other._playerActivities, _playerActivities) &&
            (identical(other.firstJoinDate, firstJoinDate) ||
                other.firstJoinDate == firstJoinDate) &&
            (identical(other.lastJoinDate, lastJoinDate) ||
                other.lastJoinDate == lastJoinDate) &&
            (identical(other.lastQuitDate, lastQuitDate) ||
                other.lastQuitDate == lastQuitDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_playerDeaths),
      const DeepCollectionEquality().hash(_playerKills),
      playerReputation,
      const DeepCollectionEquality().hash(_playerActivities),
      firstJoinDate,
      lastJoinDate,
      lastQuitDate);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {required final UserModelUserId userId,
      required final List<UserModelPlayerDeath> playerDeaths,
      required final List<UserModelPlayerKill> playerKills,
      required final UserModelPlayerReputation playerReputation,
      required final List<UserModelPlayerActivity> playerActivities,
      required final DateTime firstJoinDate,
      required final DateTime lastJoinDate,
      required final DateTime lastQuitDate}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  UserModelUserId get userId;
  @override
  List<UserModelPlayerDeath> get playerDeaths;
  @override
  List<UserModelPlayerKill> get playerKills;
  @override
  UserModelPlayerReputation get playerReputation;
  @override
  List<UserModelPlayerActivity> get playerActivities;
  @override
  DateTime get firstJoinDate;
  @override
  DateTime get lastJoinDate;
  @override
  DateTime get lastQuitDate;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModelUserId _$UserModelUserIdFromJson(Map<String, dynamic> json) {
  return _UserModelUserId.fromJson(json);
}

/// @nodoc
mixin _$UserModelUserId {
  String get uuid => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this UserModelUserId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelUserId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelUserIdCopyWith<UserModelUserId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelUserIdCopyWith<$Res> {
  factory $UserModelUserIdCopyWith(
          UserModelUserId value, $Res Function(UserModelUserId) then) =
      _$UserModelUserIdCopyWithImpl<$Res, UserModelUserId>;
  @useResult
  $Res call({String uuid, String nickname});
}

/// @nodoc
class _$UserModelUserIdCopyWithImpl<$Res, $Val extends UserModelUserId>
    implements $UserModelUserIdCopyWith<$Res> {
  _$UserModelUserIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelUserId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelUserIdImplCopyWith<$Res>
    implements $UserModelUserIdCopyWith<$Res> {
  factory _$$UserModelUserIdImplCopyWith(_$UserModelUserIdImpl value,
          $Res Function(_$UserModelUserIdImpl) then) =
      __$$UserModelUserIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String nickname});
}

/// @nodoc
class __$$UserModelUserIdImplCopyWithImpl<$Res>
    extends _$UserModelUserIdCopyWithImpl<$Res, _$UserModelUserIdImpl>
    implements _$$UserModelUserIdImplCopyWith<$Res> {
  __$$UserModelUserIdImplCopyWithImpl(
      _$UserModelUserIdImpl _value, $Res Function(_$UserModelUserIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelUserId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? nickname = null,
  }) {
    return _then(_$UserModelUserIdImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelUserIdImpl implements _UserModelUserId {
  _$UserModelUserIdImpl({required this.uuid, required this.nickname});

  factory _$UserModelUserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelUserIdImplFromJson(json);

  @override
  final String uuid;
  @override
  final String nickname;

  @override
  String toString() {
    return 'UserModelUserId(uuid: $uuid, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelUserIdImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, nickname);

  /// Create a copy of UserModelUserId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelUserIdImplCopyWith<_$UserModelUserIdImpl> get copyWith =>
      __$$UserModelUserIdImplCopyWithImpl<_$UserModelUserIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelUserIdImplToJson(
      this,
    );
  }
}

abstract class _UserModelUserId implements UserModelUserId {
  factory _UserModelUserId(
      {required final String uuid,
      required final String nickname}) = _$UserModelUserIdImpl;

  factory _UserModelUserId.fromJson(Map<String, dynamic> json) =
      _$UserModelUserIdImpl.fromJson;

  @override
  String get uuid;
  @override
  String get nickname;

  /// Create a copy of UserModelUserId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelUserIdImplCopyWith<_$UserModelUserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModelPlayerDeath _$UserModelPlayerDeathFromJson(Map<String, dynamic> json) {
  return _UserModelPlayerDeath.fromJson(json);
}

/// @nodoc
mixin _$UserModelPlayerDeath {
  String get type => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;

  /// Serializes this UserModelPlayerDeath to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelPlayerDeath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelPlayerDeathCopyWith<UserModelPlayerDeath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelPlayerDeathCopyWith<$Res> {
  factory $UserModelPlayerDeathCopyWith(UserModelPlayerDeath value,
          $Res Function(UserModelPlayerDeath) then) =
      _$UserModelPlayerDeathCopyWithImpl<$Res, UserModelPlayerDeath>;
  @useResult
  $Res call({String type, DateTime date, String? object});
}

/// @nodoc
class _$UserModelPlayerDeathCopyWithImpl<$Res,
        $Val extends UserModelPlayerDeath>
    implements $UserModelPlayerDeathCopyWith<$Res> {
  _$UserModelPlayerDeathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelPlayerDeath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? object = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelPlayerDeathImplCopyWith<$Res>
    implements $UserModelPlayerDeathCopyWith<$Res> {
  factory _$$UserModelPlayerDeathImplCopyWith(_$UserModelPlayerDeathImpl value,
          $Res Function(_$UserModelPlayerDeathImpl) then) =
      __$$UserModelPlayerDeathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, DateTime date, String? object});
}

/// @nodoc
class __$$UserModelPlayerDeathImplCopyWithImpl<$Res>
    extends _$UserModelPlayerDeathCopyWithImpl<$Res, _$UserModelPlayerDeathImpl>
    implements _$$UserModelPlayerDeathImplCopyWith<$Res> {
  __$$UserModelPlayerDeathImplCopyWithImpl(_$UserModelPlayerDeathImpl _value,
      $Res Function(_$UserModelPlayerDeathImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelPlayerDeath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? object = freezed,
  }) {
    return _then(_$UserModelPlayerDeathImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelPlayerDeathImpl implements _UserModelPlayerDeath {
  _$UserModelPlayerDeathImpl(
      {required this.type, required this.date, this.object});

  factory _$UserModelPlayerDeathImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelPlayerDeathImplFromJson(json);

  @override
  final String type;
  @override
  final DateTime date;
  @override
  final String? object;

  @override
  String toString() {
    return 'UserModelPlayerDeath(type: $type, date: $date, object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelPlayerDeathImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, date, object);

  /// Create a copy of UserModelPlayerDeath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelPlayerDeathImplCopyWith<_$UserModelPlayerDeathImpl>
      get copyWith =>
          __$$UserModelPlayerDeathImplCopyWithImpl<_$UserModelPlayerDeathImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelPlayerDeathImplToJson(
      this,
    );
  }
}

abstract class _UserModelPlayerDeath implements UserModelPlayerDeath {
  factory _UserModelPlayerDeath(
      {required final String type,
      required final DateTime date,
      final String? object}) = _$UserModelPlayerDeathImpl;

  factory _UserModelPlayerDeath.fromJson(Map<String, dynamic> json) =
      _$UserModelPlayerDeathImpl.fromJson;

  @override
  String get type;
  @override
  DateTime get date;
  @override
  String? get object;

  /// Create a copy of UserModelPlayerDeath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelPlayerDeathImplCopyWith<_$UserModelPlayerDeathImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserModelPlayerKill _$UserModelPlayerKillFromJson(Map<String, dynamic> json) {
  return _UserModelPlayerKill.fromJson(json);
}

/// @nodoc
mixin _$UserModelPlayerKill {
  UserModelUserId get killed => throw _privateConstructorUsedError;
  String get killType => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this UserModelPlayerKill to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelPlayerKill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelPlayerKillCopyWith<UserModelPlayerKill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelPlayerKillCopyWith<$Res> {
  factory $UserModelPlayerKillCopyWith(
          UserModelPlayerKill value, $Res Function(UserModelPlayerKill) then) =
      _$UserModelPlayerKillCopyWithImpl<$Res, UserModelPlayerKill>;
  @useResult
  $Res call({UserModelUserId killed, String killType, DateTime date});

  $UserModelUserIdCopyWith<$Res> get killed;
}

/// @nodoc
class _$UserModelPlayerKillCopyWithImpl<$Res, $Val extends UserModelPlayerKill>
    implements $UserModelPlayerKillCopyWith<$Res> {
  _$UserModelPlayerKillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelPlayerKill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? killed = null,
    Object? killType = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      killed: null == killed
          ? _value.killed
          : killed // ignore: cast_nullable_to_non_nullable
              as UserModelUserId,
      killType: null == killType
          ? _value.killType
          : killType // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of UserModelPlayerKill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelUserIdCopyWith<$Res> get killed {
    return $UserModelUserIdCopyWith<$Res>(_value.killed, (value) {
      return _then(_value.copyWith(killed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelPlayerKillImplCopyWith<$Res>
    implements $UserModelPlayerKillCopyWith<$Res> {
  factory _$$UserModelPlayerKillImplCopyWith(_$UserModelPlayerKillImpl value,
          $Res Function(_$UserModelPlayerKillImpl) then) =
      __$$UserModelPlayerKillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModelUserId killed, String killType, DateTime date});

  @override
  $UserModelUserIdCopyWith<$Res> get killed;
}

/// @nodoc
class __$$UserModelPlayerKillImplCopyWithImpl<$Res>
    extends _$UserModelPlayerKillCopyWithImpl<$Res, _$UserModelPlayerKillImpl>
    implements _$$UserModelPlayerKillImplCopyWith<$Res> {
  __$$UserModelPlayerKillImplCopyWithImpl(_$UserModelPlayerKillImpl _value,
      $Res Function(_$UserModelPlayerKillImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelPlayerKill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? killed = null,
    Object? killType = null,
    Object? date = null,
  }) {
    return _then(_$UserModelPlayerKillImpl(
      killed: null == killed
          ? _value.killed
          : killed // ignore: cast_nullable_to_non_nullable
              as UserModelUserId,
      killType: null == killType
          ? _value.killType
          : killType // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelPlayerKillImpl implements _UserModelPlayerKill {
  _$UserModelPlayerKillImpl(
      {required this.killed, required this.killType, required this.date});

  factory _$UserModelPlayerKillImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelPlayerKillImplFromJson(json);

  @override
  final UserModelUserId killed;
  @override
  final String killType;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'UserModelPlayerKill(killed: $killed, killType: $killType, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelPlayerKillImpl &&
            (identical(other.killed, killed) || other.killed == killed) &&
            (identical(other.killType, killType) ||
                other.killType == killType) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, killed, killType, date);

  /// Create a copy of UserModelPlayerKill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelPlayerKillImplCopyWith<_$UserModelPlayerKillImpl> get copyWith =>
      __$$UserModelPlayerKillImplCopyWithImpl<_$UserModelPlayerKillImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelPlayerKillImplToJson(
      this,
    );
  }
}

abstract class _UserModelPlayerKill implements UserModelPlayerKill {
  factory _UserModelPlayerKill(
      {required final UserModelUserId killed,
      required final String killType,
      required final DateTime date}) = _$UserModelPlayerKillImpl;

  factory _UserModelPlayerKill.fromJson(Map<String, dynamic> json) =
      _$UserModelPlayerKillImpl.fromJson;

  @override
  UserModelUserId get killed;
  @override
  String get killType;
  @override
  DateTime get date;

  /// Create a copy of UserModelPlayerKill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelPlayerKillImplCopyWith<_$UserModelPlayerKillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModelPlayerReputation _$UserModelPlayerReputationFromJson(
    Map<String, dynamic> json) {
  return _UserModelPlayerReputation.fromJson(json);
}

/// @nodoc
mixin _$UserModelPlayerReputation {
  List<dynamic> get liked => throw _privateConstructorUsedError;
  List<dynamic> get disliked => throw _privateConstructorUsedError;

  /// Serializes this UserModelPlayerReputation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelPlayerReputation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelPlayerReputationCopyWith<UserModelPlayerReputation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelPlayerReputationCopyWith<$Res> {
  factory $UserModelPlayerReputationCopyWith(UserModelPlayerReputation value,
          $Res Function(UserModelPlayerReputation) then) =
      _$UserModelPlayerReputationCopyWithImpl<$Res, UserModelPlayerReputation>;
  @useResult
  $Res call({List<dynamic> liked, List<dynamic> disliked});
}

/// @nodoc
class _$UserModelPlayerReputationCopyWithImpl<$Res,
        $Val extends UserModelPlayerReputation>
    implements $UserModelPlayerReputationCopyWith<$Res> {
  _$UserModelPlayerReputationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelPlayerReputation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liked = null,
    Object? disliked = null,
  }) {
    return _then(_value.copyWith(
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      disliked: null == disliked
          ? _value.disliked
          : disliked // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelPlayerReputationImplCopyWith<$Res>
    implements $UserModelPlayerReputationCopyWith<$Res> {
  factory _$$UserModelPlayerReputationImplCopyWith(
          _$UserModelPlayerReputationImpl value,
          $Res Function(_$UserModelPlayerReputationImpl) then) =
      __$$UserModelPlayerReputationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> liked, List<dynamic> disliked});
}

/// @nodoc
class __$$UserModelPlayerReputationImplCopyWithImpl<$Res>
    extends _$UserModelPlayerReputationCopyWithImpl<$Res,
        _$UserModelPlayerReputationImpl>
    implements _$$UserModelPlayerReputationImplCopyWith<$Res> {
  __$$UserModelPlayerReputationImplCopyWithImpl(
      _$UserModelPlayerReputationImpl _value,
      $Res Function(_$UserModelPlayerReputationImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelPlayerReputation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liked = null,
    Object? disliked = null,
  }) {
    return _then(_$UserModelPlayerReputationImpl(
      liked: null == liked
          ? _value._liked
          : liked // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      disliked: null == disliked
          ? _value._disliked
          : disliked // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelPlayerReputationImpl implements _UserModelPlayerReputation {
  _$UserModelPlayerReputationImpl(
      {required final List<dynamic> liked,
      required final List<dynamic> disliked})
      : _liked = liked,
        _disliked = disliked;

  factory _$UserModelPlayerReputationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelPlayerReputationImplFromJson(json);

  final List<dynamic> _liked;
  @override
  List<dynamic> get liked {
    if (_liked is EqualUnmodifiableListView) return _liked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liked);
  }

  final List<dynamic> _disliked;
  @override
  List<dynamic> get disliked {
    if (_disliked is EqualUnmodifiableListView) return _disliked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disliked);
  }

  @override
  String toString() {
    return 'UserModelPlayerReputation(liked: $liked, disliked: $disliked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelPlayerReputationImpl &&
            const DeepCollectionEquality().equals(other._liked, _liked) &&
            const DeepCollectionEquality().equals(other._disliked, _disliked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_liked),
      const DeepCollectionEquality().hash(_disliked));

  /// Create a copy of UserModelPlayerReputation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelPlayerReputationImplCopyWith<_$UserModelPlayerReputationImpl>
      get copyWith => __$$UserModelPlayerReputationImplCopyWithImpl<
          _$UserModelPlayerReputationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelPlayerReputationImplToJson(
      this,
    );
  }
}

abstract class _UserModelPlayerReputation implements UserModelPlayerReputation {
  factory _UserModelPlayerReputation(
      {required final List<dynamic> liked,
      required final List<dynamic> disliked}) = _$UserModelPlayerReputationImpl;

  factory _UserModelPlayerReputation.fromJson(Map<String, dynamic> json) =
      _$UserModelPlayerReputationImpl.fromJson;

  @override
  List<dynamic> get liked;
  @override
  List<dynamic> get disliked;

  /// Create a copy of UserModelPlayerReputation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelPlayerReputationImplCopyWith<_$UserModelPlayerReputationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserModelPlayerActivity _$UserModelPlayerActivityFromJson(
    Map<String, dynamic> json) {
  return _UserModelPlayerActivity.fromJson(json);
}

/// @nodoc
mixin _$UserModelPlayerActivity {
  String get type => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  /// Serializes this UserModelPlayerActivity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelPlayerActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelPlayerActivityCopyWith<UserModelPlayerActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelPlayerActivityCopyWith<$Res> {
  factory $UserModelPlayerActivityCopyWith(UserModelPlayerActivity value,
          $Res Function(UserModelPlayerActivity) then) =
      _$UserModelPlayerActivityCopyWithImpl<$Res, UserModelPlayerActivity>;
  @useResult
  $Res call({String type, DateTime start, DateTime end});
}

/// @nodoc
class _$UserModelPlayerActivityCopyWithImpl<$Res,
        $Val extends UserModelPlayerActivity>
    implements $UserModelPlayerActivityCopyWith<$Res> {
  _$UserModelPlayerActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelPlayerActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelPlayerActivityImplCopyWith<$Res>
    implements $UserModelPlayerActivityCopyWith<$Res> {
  factory _$$UserModelPlayerActivityImplCopyWith(
          _$UserModelPlayerActivityImpl value,
          $Res Function(_$UserModelPlayerActivityImpl) then) =
      __$$UserModelPlayerActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, DateTime start, DateTime end});
}

/// @nodoc
class __$$UserModelPlayerActivityImplCopyWithImpl<$Res>
    extends _$UserModelPlayerActivityCopyWithImpl<$Res,
        _$UserModelPlayerActivityImpl>
    implements _$$UserModelPlayerActivityImplCopyWith<$Res> {
  __$$UserModelPlayerActivityImplCopyWithImpl(
      _$UserModelPlayerActivityImpl _value,
      $Res Function(_$UserModelPlayerActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelPlayerActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$UserModelPlayerActivityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelPlayerActivityImpl implements _UserModelPlayerActivity {
  _$UserModelPlayerActivityImpl(
      {required this.type, required this.start, required this.end});

  factory _$UserModelPlayerActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelPlayerActivityImplFromJson(json);

  @override
  final String type;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'UserModelPlayerActivity(type: $type, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelPlayerActivityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, start, end);

  /// Create a copy of UserModelPlayerActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelPlayerActivityImplCopyWith<_$UserModelPlayerActivityImpl>
      get copyWith => __$$UserModelPlayerActivityImplCopyWithImpl<
          _$UserModelPlayerActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelPlayerActivityImplToJson(
      this,
    );
  }
}

abstract class _UserModelPlayerActivity implements UserModelPlayerActivity {
  factory _UserModelPlayerActivity(
      {required final String type,
      required final DateTime start,
      required final DateTime end}) = _$UserModelPlayerActivityImpl;

  factory _UserModelPlayerActivity.fromJson(Map<String, dynamic> json) =
      _$UserModelPlayerActivityImpl.fromJson;

  @override
  String get type;
  @override
  DateTime get start;
  @override
  DateTime get end;

  /// Create a copy of UserModelPlayerActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelPlayerActivityImplCopyWith<_$UserModelPlayerActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
