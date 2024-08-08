// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerInfoModel _$ServerInfoModelFromJson(Map<String, dynamic> json) {
  return _ServerInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ServerInfoModel {
  String get version => throw _privateConstructorUsedError;
  String get gameonVersion => throw _privateConstructorUsedError;
  int get maxPlayers => throw _privateConstructorUsedError;
  List<OnlinePlayer>? get onlinePlayers => throw _privateConstructorUsedError;
  String get motd => throw _privateConstructorUsedError;
  DateTime get uptime => throw _privateConstructorUsedError;
  List<String>? get allowedDimensions => throw _privateConstructorUsedError;
  int get idleTimeout => throw _privateConstructorUsedError;
  List<String>? get enabledPacks => throw _privateConstructorUsedError;
  List<String>? get disabledPacks => throw _privateConstructorUsedError;
  String get defaultGameMode => throw _privateConstructorUsedError;
  int get simulationDistance => throw _privateConstructorUsedError;
  List<String>? get worlds => throw _privateConstructorUsedError;
  int get viewDistance => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonValue('whitelistedPlayers')
  List<String>? get whitelistedPlayerUuids =>
      throw _privateConstructorUsedError;
  @JsonValue('bannedUsers')
  List<String>? get bannedUserUuids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerInfoModelCopyWith<ServerInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerInfoModelCopyWith<$Res> {
  factory $ServerInfoModelCopyWith(
          ServerInfoModel value, $Res Function(ServerInfoModel) then) =
      _$ServerInfoModelCopyWithImpl<$Res, ServerInfoModel>;
  @useResult
  $Res call(
      {String version,
      String gameonVersion,
      int maxPlayers,
      List<OnlinePlayer>? onlinePlayers,
      String motd,
      DateTime uptime,
      List<String>? allowedDimensions,
      int idleTimeout,
      List<String>? enabledPacks,
      List<String>? disabledPacks,
      String defaultGameMode,
      int simulationDistance,
      List<String>? worlds,
      int viewDistance,
      String name,
      String address,
      @JsonValue('whitelistedPlayers') List<String>? whitelistedPlayerUuids,
      @JsonValue('bannedUsers') List<String>? bannedUserUuids});
}

/// @nodoc
class _$ServerInfoModelCopyWithImpl<$Res, $Val extends ServerInfoModel>
    implements $ServerInfoModelCopyWith<$Res> {
  _$ServerInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? gameonVersion = null,
    Object? maxPlayers = null,
    Object? onlinePlayers = freezed,
    Object? motd = null,
    Object? uptime = null,
    Object? allowedDimensions = freezed,
    Object? idleTimeout = null,
    Object? enabledPacks = freezed,
    Object? disabledPacks = freezed,
    Object? defaultGameMode = null,
    Object? simulationDistance = null,
    Object? worlds = freezed,
    Object? viewDistance = null,
    Object? name = null,
    Object? address = null,
    Object? whitelistedPlayerUuids = freezed,
    Object? bannedUserUuids = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      gameonVersion: null == gameonVersion
          ? _value.gameonVersion
          : gameonVersion // ignore: cast_nullable_to_non_nullable
              as String,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      onlinePlayers: freezed == onlinePlayers
          ? _value.onlinePlayers
          : onlinePlayers // ignore: cast_nullable_to_non_nullable
              as List<OnlinePlayer>?,
      motd: null == motd
          ? _value.motd
          : motd // ignore: cast_nullable_to_non_nullable
              as String,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      allowedDimensions: freezed == allowedDimensions
          ? _value.allowedDimensions
          : allowedDimensions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      idleTimeout: null == idleTimeout
          ? _value.idleTimeout
          : idleTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      enabledPacks: freezed == enabledPacks
          ? _value.enabledPacks
          : enabledPacks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      disabledPacks: freezed == disabledPacks
          ? _value.disabledPacks
          : disabledPacks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultGameMode: null == defaultGameMode
          ? _value.defaultGameMode
          : defaultGameMode // ignore: cast_nullable_to_non_nullable
              as String,
      simulationDistance: null == simulationDistance
          ? _value.simulationDistance
          : simulationDistance // ignore: cast_nullable_to_non_nullable
              as int,
      worlds: freezed == worlds
          ? _value.worlds
          : worlds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      viewDistance: null == viewDistance
          ? _value.viewDistance
          : viewDistance // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      whitelistedPlayerUuids: freezed == whitelistedPlayerUuids
          ? _value.whitelistedPlayerUuids
          : whitelistedPlayerUuids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bannedUserUuids: freezed == bannedUserUuids
          ? _value.bannedUserUuids
          : bannedUserUuids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerInfoModelImplCopyWith<$Res>
    implements $ServerInfoModelCopyWith<$Res> {
  factory _$$ServerInfoModelImplCopyWith(_$ServerInfoModelImpl value,
          $Res Function(_$ServerInfoModelImpl) then) =
      __$$ServerInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      String gameonVersion,
      int maxPlayers,
      List<OnlinePlayer>? onlinePlayers,
      String motd,
      DateTime uptime,
      List<String>? allowedDimensions,
      int idleTimeout,
      List<String>? enabledPacks,
      List<String>? disabledPacks,
      String defaultGameMode,
      int simulationDistance,
      List<String>? worlds,
      int viewDistance,
      String name,
      String address,
      @JsonValue('whitelistedPlayers') List<String>? whitelistedPlayerUuids,
      @JsonValue('bannedUsers') List<String>? bannedUserUuids});
}

/// @nodoc
class __$$ServerInfoModelImplCopyWithImpl<$Res>
    extends _$ServerInfoModelCopyWithImpl<$Res, _$ServerInfoModelImpl>
    implements _$$ServerInfoModelImplCopyWith<$Res> {
  __$$ServerInfoModelImplCopyWithImpl(
      _$ServerInfoModelImpl _value, $Res Function(_$ServerInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? gameonVersion = null,
    Object? maxPlayers = null,
    Object? onlinePlayers = freezed,
    Object? motd = null,
    Object? uptime = null,
    Object? allowedDimensions = freezed,
    Object? idleTimeout = null,
    Object? enabledPacks = freezed,
    Object? disabledPacks = freezed,
    Object? defaultGameMode = null,
    Object? simulationDistance = null,
    Object? worlds = freezed,
    Object? viewDistance = null,
    Object? name = null,
    Object? address = null,
    Object? whitelistedPlayerUuids = freezed,
    Object? bannedUserUuids = freezed,
  }) {
    return _then(_$ServerInfoModelImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      gameonVersion: null == gameonVersion
          ? _value.gameonVersion
          : gameonVersion // ignore: cast_nullable_to_non_nullable
              as String,
      maxPlayers: null == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int,
      onlinePlayers: freezed == onlinePlayers
          ? _value._onlinePlayers
          : onlinePlayers // ignore: cast_nullable_to_non_nullable
              as List<OnlinePlayer>?,
      motd: null == motd
          ? _value.motd
          : motd // ignore: cast_nullable_to_non_nullable
              as String,
      uptime: null == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      allowedDimensions: freezed == allowedDimensions
          ? _value._allowedDimensions
          : allowedDimensions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      idleTimeout: null == idleTimeout
          ? _value.idleTimeout
          : idleTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      enabledPacks: freezed == enabledPacks
          ? _value._enabledPacks
          : enabledPacks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      disabledPacks: freezed == disabledPacks
          ? _value._disabledPacks
          : disabledPacks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultGameMode: null == defaultGameMode
          ? _value.defaultGameMode
          : defaultGameMode // ignore: cast_nullable_to_non_nullable
              as String,
      simulationDistance: null == simulationDistance
          ? _value.simulationDistance
          : simulationDistance // ignore: cast_nullable_to_non_nullable
              as int,
      worlds: freezed == worlds
          ? _value._worlds
          : worlds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      viewDistance: null == viewDistance
          ? _value.viewDistance
          : viewDistance // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      whitelistedPlayerUuids: freezed == whitelistedPlayerUuids
          ? _value._whitelistedPlayerUuids
          : whitelistedPlayerUuids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bannedUserUuids: freezed == bannedUserUuids
          ? _value._bannedUserUuids
          : bannedUserUuids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerInfoModelImpl implements _ServerInfoModel {
  const _$ServerInfoModelImpl(
      {required this.version,
      required this.gameonVersion,
      required this.maxPlayers,
      required final List<OnlinePlayer>? onlinePlayers,
      required this.motd,
      required this.uptime,
      required final List<String>? allowedDimensions,
      required this.idleTimeout,
      required final List<String>? enabledPacks,
      required final List<String>? disabledPacks,
      required this.defaultGameMode,
      required this.simulationDistance,
      required final List<String>? worlds,
      required this.viewDistance,
      required this.name,
      required this.address,
      @JsonValue('whitelistedPlayers')
      required final List<String>? whitelistedPlayerUuids,
      @JsonValue('bannedUsers') required final List<String>? bannedUserUuids})
      : _onlinePlayers = onlinePlayers,
        _allowedDimensions = allowedDimensions,
        _enabledPacks = enabledPacks,
        _disabledPacks = disabledPacks,
        _worlds = worlds,
        _whitelistedPlayerUuids = whitelistedPlayerUuids,
        _bannedUserUuids = bannedUserUuids;

  factory _$ServerInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerInfoModelImplFromJson(json);

  @override
  final String version;
  @override
  final String gameonVersion;
  @override
  final int maxPlayers;
  final List<OnlinePlayer>? _onlinePlayers;
  @override
  List<OnlinePlayer>? get onlinePlayers {
    final value = _onlinePlayers;
    if (value == null) return null;
    if (_onlinePlayers is EqualUnmodifiableListView) return _onlinePlayers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String motd;
  @override
  final DateTime uptime;
  final List<String>? _allowedDimensions;
  @override
  List<String>? get allowedDimensions {
    final value = _allowedDimensions;
    if (value == null) return null;
    if (_allowedDimensions is EqualUnmodifiableListView)
      return _allowedDimensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int idleTimeout;
  final List<String>? _enabledPacks;
  @override
  List<String>? get enabledPacks {
    final value = _enabledPacks;
    if (value == null) return null;
    if (_enabledPacks is EqualUnmodifiableListView) return _enabledPacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _disabledPacks;
  @override
  List<String>? get disabledPacks {
    final value = _disabledPacks;
    if (value == null) return null;
    if (_disabledPacks is EqualUnmodifiableListView) return _disabledPacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String defaultGameMode;
  @override
  final int simulationDistance;
  final List<String>? _worlds;
  @override
  List<String>? get worlds {
    final value = _worlds;
    if (value == null) return null;
    if (_worlds is EqualUnmodifiableListView) return _worlds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int viewDistance;
  @override
  final String name;
  @override
  final String address;
  final List<String>? _whitelistedPlayerUuids;
  @override
  @JsonValue('whitelistedPlayers')
  List<String>? get whitelistedPlayerUuids {
    final value = _whitelistedPlayerUuids;
    if (value == null) return null;
    if (_whitelistedPlayerUuids is EqualUnmodifiableListView)
      return _whitelistedPlayerUuids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _bannedUserUuids;
  @override
  @JsonValue('bannedUsers')
  List<String>? get bannedUserUuids {
    final value = _bannedUserUuids;
    if (value == null) return null;
    if (_bannedUserUuids is EqualUnmodifiableListView) return _bannedUserUuids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServerInfoModel(version: $version, gameonVersion: $gameonVersion, maxPlayers: $maxPlayers, onlinePlayers: $onlinePlayers, motd: $motd, uptime: $uptime, allowedDimensions: $allowedDimensions, idleTimeout: $idleTimeout, enabledPacks: $enabledPacks, disabledPacks: $disabledPacks, defaultGameMode: $defaultGameMode, simulationDistance: $simulationDistance, worlds: $worlds, viewDistance: $viewDistance, name: $name, address: $address, whitelistedPlayerUuids: $whitelistedPlayerUuids, bannedUserUuids: $bannedUserUuids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerInfoModelImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.gameonVersion, gameonVersion) ||
                other.gameonVersion == gameonVersion) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            const DeepCollectionEquality()
                .equals(other._onlinePlayers, _onlinePlayers) &&
            (identical(other.motd, motd) || other.motd == motd) &&
            (identical(other.uptime, uptime) || other.uptime == uptime) &&
            const DeepCollectionEquality()
                .equals(other._allowedDimensions, _allowedDimensions) &&
            (identical(other.idleTimeout, idleTimeout) ||
                other.idleTimeout == idleTimeout) &&
            const DeepCollectionEquality()
                .equals(other._enabledPacks, _enabledPacks) &&
            const DeepCollectionEquality()
                .equals(other._disabledPacks, _disabledPacks) &&
            (identical(other.defaultGameMode, defaultGameMode) ||
                other.defaultGameMode == defaultGameMode) &&
            (identical(other.simulationDistance, simulationDistance) ||
                other.simulationDistance == simulationDistance) &&
            const DeepCollectionEquality().equals(other._worlds, _worlds) &&
            (identical(other.viewDistance, viewDistance) ||
                other.viewDistance == viewDistance) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(
                other._whitelistedPlayerUuids, _whitelistedPlayerUuids) &&
            const DeepCollectionEquality()
                .equals(other._bannedUserUuids, _bannedUserUuids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      gameonVersion,
      maxPlayers,
      const DeepCollectionEquality().hash(_onlinePlayers),
      motd,
      uptime,
      const DeepCollectionEquality().hash(_allowedDimensions),
      idleTimeout,
      const DeepCollectionEquality().hash(_enabledPacks),
      const DeepCollectionEquality().hash(_disabledPacks),
      defaultGameMode,
      simulationDistance,
      const DeepCollectionEquality().hash(_worlds),
      viewDistance,
      name,
      address,
      const DeepCollectionEquality().hash(_whitelistedPlayerUuids),
      const DeepCollectionEquality().hash(_bannedUserUuids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerInfoModelImplCopyWith<_$ServerInfoModelImpl> get copyWith =>
      __$$ServerInfoModelImplCopyWithImpl<_$ServerInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerInfoModelImplToJson(
      this,
    );
  }
}

abstract class _ServerInfoModel implements ServerInfoModel {
  const factory _ServerInfoModel(
      {required final String version,
      required final String gameonVersion,
      required final int maxPlayers,
      required final List<OnlinePlayer>? onlinePlayers,
      required final String motd,
      required final DateTime uptime,
      required final List<String>? allowedDimensions,
      required final int idleTimeout,
      required final List<String>? enabledPacks,
      required final List<String>? disabledPacks,
      required final String defaultGameMode,
      required final int simulationDistance,
      required final List<String>? worlds,
      required final int viewDistance,
      required final String name,
      required final String address,
      @JsonValue('whitelistedPlayers')
      required final List<String>? whitelistedPlayerUuids,
      @JsonValue('bannedUsers')
      required final List<String>? bannedUserUuids}) = _$ServerInfoModelImpl;

  factory _ServerInfoModel.fromJson(Map<String, dynamic> json) =
      _$ServerInfoModelImpl.fromJson;

  @override
  String get version;
  @override
  String get gameonVersion;
  @override
  int get maxPlayers;
  @override
  List<OnlinePlayer>? get onlinePlayers;
  @override
  String get motd;
  @override
  DateTime get uptime;
  @override
  List<String>? get allowedDimensions;
  @override
  int get idleTimeout;
  @override
  List<String>? get enabledPacks;
  @override
  List<String>? get disabledPacks;
  @override
  String get defaultGameMode;
  @override
  int get simulationDistance;
  @override
  List<String>? get worlds;
  @override
  int get viewDistance;
  @override
  String get name;
  @override
  String get address;
  @override
  @JsonValue('whitelistedPlayers')
  List<String>? get whitelistedPlayerUuids;
  @override
  @JsonValue('bannedUsers')
  List<String>? get bannedUserUuids;
  @override
  @JsonKey(ignore: true)
  _$$ServerInfoModelImplCopyWith<_$ServerInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OnlinePlayer _$OnlinePlayerFromJson(Map<String, dynamic> json) {
  return _OnlinePlayer.fromJson(json);
}

/// @nodoc
mixin _$OnlinePlayer {
  String get uuid => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlinePlayerCopyWith<OnlinePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePlayerCopyWith<$Res> {
  factory $OnlinePlayerCopyWith(
          OnlinePlayer value, $Res Function(OnlinePlayer) then) =
      _$OnlinePlayerCopyWithImpl<$Res, OnlinePlayer>;
  @useResult
  $Res call({String uuid, String username});
}

/// @nodoc
class _$OnlinePlayerCopyWithImpl<$Res, $Val extends OnlinePlayer>
    implements $OnlinePlayerCopyWith<$Res> {
  _$OnlinePlayerCopyWithImpl(this._value, this._then);

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
abstract class _$$OnlinePlayerImplCopyWith<$Res>
    implements $OnlinePlayerCopyWith<$Res> {
  factory _$$OnlinePlayerImplCopyWith(
          _$OnlinePlayerImpl value, $Res Function(_$OnlinePlayerImpl) then) =
      __$$OnlinePlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String username});
}

/// @nodoc
class __$$OnlinePlayerImplCopyWithImpl<$Res>
    extends _$OnlinePlayerCopyWithImpl<$Res, _$OnlinePlayerImpl>
    implements _$$OnlinePlayerImplCopyWith<$Res> {
  __$$OnlinePlayerImplCopyWithImpl(
      _$OnlinePlayerImpl _value, $Res Function(_$OnlinePlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? username = null,
  }) {
    return _then(_$OnlinePlayerImpl(
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
class _$OnlinePlayerImpl implements _OnlinePlayer {
  const _$OnlinePlayerImpl({required this.uuid, required this.username});

  factory _$OnlinePlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlinePlayerImplFromJson(json);

  @override
  final String uuid;
  @override
  final String username;

  @override
  String toString() {
    return 'OnlinePlayer(uuid: $uuid, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlinePlayerImpl &&
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
  _$$OnlinePlayerImplCopyWith<_$OnlinePlayerImpl> get copyWith =>
      __$$OnlinePlayerImplCopyWithImpl<_$OnlinePlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlinePlayerImplToJson(
      this,
    );
  }
}

abstract class _OnlinePlayer implements OnlinePlayer {
  const factory _OnlinePlayer(
      {required final String uuid,
      required final String username}) = _$OnlinePlayerImpl;

  factory _OnlinePlayer.fromJson(Map<String, dynamic> json) =
      _$OnlinePlayerImpl.fromJson;

  @override
  String get uuid;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$OnlinePlayerImplCopyWith<_$OnlinePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
