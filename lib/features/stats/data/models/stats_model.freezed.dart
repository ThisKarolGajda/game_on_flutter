// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatsModel _$StatsModelFromJson(Map<String, dynamic> json) {
  return _StatsModel.fromJson(json);
}

/// @nodoc
mixin _$StatsModel {
  bool get success => throw _privateConstructorUsedError;
  StatValues get values => throw _privateConstructorUsedError;

  /// Serializes this StatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatsModelCopyWith<StatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsModelCopyWith<$Res> {
  factory $StatsModelCopyWith(
          StatsModel value, $Res Function(StatsModel) then) =
      _$StatsModelCopyWithImpl<$Res, StatsModel>;
  @useResult
  $Res call({bool success, StatValues values});

  $StatValuesCopyWith<$Res> get values;
}

/// @nodoc
class _$StatsModelCopyWithImpl<$Res, $Val extends StatsModel>
    implements $StatsModelCopyWith<$Res> {
  _$StatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as StatValues,
    ) as $Val);
  }

  /// Create a copy of StatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatValuesCopyWith<$Res> get values {
    return $StatValuesCopyWith<$Res>(_value.values, (value) {
      return _then(_value.copyWith(values: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsModelImplCopyWith<$Res>
    implements $StatsModelCopyWith<$Res> {
  factory _$$StatsModelImplCopyWith(
          _$StatsModelImpl value, $Res Function(_$StatsModelImpl) then) =
      __$$StatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, StatValues values});

  @override
  $StatValuesCopyWith<$Res> get values;
}

/// @nodoc
class __$$StatsModelImplCopyWithImpl<$Res>
    extends _$StatsModelCopyWithImpl<$Res, _$StatsModelImpl>
    implements _$$StatsModelImplCopyWith<$Res> {
  __$$StatsModelImplCopyWithImpl(
      _$StatsModelImpl _value, $Res Function(_$StatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? values = null,
  }) {
    return _then(_$StatsModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as StatValues,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsModelImpl implements _StatsModel {
  const _$StatsModelImpl({required this.success, required this.values});

  factory _$StatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsModelImplFromJson(json);

  @override
  final bool success;
  @override
  final StatValues values;

  @override
  String toString() {
    return 'StatsModel(success: $success, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.values, values) || other.values == values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, values);

  /// Create a copy of StatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsModelImplCopyWith<_$StatsModelImpl> get copyWith =>
      __$$StatsModelImplCopyWithImpl<_$StatsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsModelImplToJson(
      this,
    );
  }
}

abstract class _StatsModel implements StatsModel {
  const factory _StatsModel(
      {required final bool success,
      required final StatValues values}) = _$StatsModelImpl;

  factory _StatsModel.fromJson(Map<String, dynamic> json) =
      _$StatsModelImpl.fromJson;

  @override
  bool get success;
  @override
  StatValues get values;

  /// Create a copy of StatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsModelImplCopyWith<_$StatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatValues _$StatValuesFromJson(Map<String, dynamic> json) {
  return _StatValues.fromJson(json);
}

/// @nodoc
mixin _$StatValues {
  int? get eatenGoldenApples => throw _privateConstructorUsedError;
  int? get money => throw _privateConstructorUsedError;
  int? get itemsCrafted => throw _privateConstructorUsedError;
  int? get deaths => throw _privateConstructorUsedError;
  int? get animalBreed => throw _privateConstructorUsedError;
  int? get brokenTools => throw _privateConstructorUsedError;
  int? get kills => throw _privateConstructorUsedError;
  int? get placedBlocks => throw _privateConstructorUsedError;
  int? get xpGained => throw _privateConstructorUsedError;
  int? get dealtDamage => throw _privateConstructorUsedError;
  int? get thrownEnderPearls => throw _privateConstructorUsedError;
  int? get walkedDistance => throw _privateConstructorUsedError;
  int? get mobKills => throw _privateConstructorUsedError;
  int? get playedTime => throw _privateConstructorUsedError;
  int? get minedBlocks => throw _privateConstructorUsedError;

  /// Serializes this StatValues to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatValuesCopyWith<StatValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatValuesCopyWith<$Res> {
  factory $StatValuesCopyWith(
          StatValues value, $Res Function(StatValues) then) =
      _$StatValuesCopyWithImpl<$Res, StatValues>;
  @useResult
  $Res call(
      {int? eatenGoldenApples,
      int? money,
      int? itemsCrafted,
      int? deaths,
      int? animalBreed,
      int? brokenTools,
      int? kills,
      int? placedBlocks,
      int? xpGained,
      int? dealtDamage,
      int? thrownEnderPearls,
      int? walkedDistance,
      int? mobKills,
      int? playedTime,
      int? minedBlocks});
}

/// @nodoc
class _$StatValuesCopyWithImpl<$Res, $Val extends StatValues>
    implements $StatValuesCopyWith<$Res> {
  _$StatValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eatenGoldenApples = freezed,
    Object? money = freezed,
    Object? itemsCrafted = freezed,
    Object? deaths = freezed,
    Object? animalBreed = freezed,
    Object? brokenTools = freezed,
    Object? kills = freezed,
    Object? placedBlocks = freezed,
    Object? xpGained = freezed,
    Object? dealtDamage = freezed,
    Object? thrownEnderPearls = freezed,
    Object? walkedDistance = freezed,
    Object? mobKills = freezed,
    Object? playedTime = freezed,
    Object? minedBlocks = freezed,
  }) {
    return _then(_value.copyWith(
      eatenGoldenApples: freezed == eatenGoldenApples
          ? _value.eatenGoldenApples
          : eatenGoldenApples // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsCrafted: freezed == itemsCrafted
          ? _value.itemsCrafted
          : itemsCrafted // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: freezed == deaths
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      animalBreed: freezed == animalBreed
          ? _value.animalBreed
          : animalBreed // ignore: cast_nullable_to_non_nullable
              as int?,
      brokenTools: freezed == brokenTools
          ? _value.brokenTools
          : brokenTools // ignore: cast_nullable_to_non_nullable
              as int?,
      kills: freezed == kills
          ? _value.kills
          : kills // ignore: cast_nullable_to_non_nullable
              as int?,
      placedBlocks: freezed == placedBlocks
          ? _value.placedBlocks
          : placedBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
      xpGained: freezed == xpGained
          ? _value.xpGained
          : xpGained // ignore: cast_nullable_to_non_nullable
              as int?,
      dealtDamage: freezed == dealtDamage
          ? _value.dealtDamage
          : dealtDamage // ignore: cast_nullable_to_non_nullable
              as int?,
      thrownEnderPearls: freezed == thrownEnderPearls
          ? _value.thrownEnderPearls
          : thrownEnderPearls // ignore: cast_nullable_to_non_nullable
              as int?,
      walkedDistance: freezed == walkedDistance
          ? _value.walkedDistance
          : walkedDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      mobKills: freezed == mobKills
          ? _value.mobKills
          : mobKills // ignore: cast_nullable_to_non_nullable
              as int?,
      playedTime: freezed == playedTime
          ? _value.playedTime
          : playedTime // ignore: cast_nullable_to_non_nullable
              as int?,
      minedBlocks: freezed == minedBlocks
          ? _value.minedBlocks
          : minedBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatValuesImplCopyWith<$Res>
    implements $StatValuesCopyWith<$Res> {
  factory _$$StatValuesImplCopyWith(
          _$StatValuesImpl value, $Res Function(_$StatValuesImpl) then) =
      __$$StatValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? eatenGoldenApples,
      int? money,
      int? itemsCrafted,
      int? deaths,
      int? animalBreed,
      int? brokenTools,
      int? kills,
      int? placedBlocks,
      int? xpGained,
      int? dealtDamage,
      int? thrownEnderPearls,
      int? walkedDistance,
      int? mobKills,
      int? playedTime,
      int? minedBlocks});
}

/// @nodoc
class __$$StatValuesImplCopyWithImpl<$Res>
    extends _$StatValuesCopyWithImpl<$Res, _$StatValuesImpl>
    implements _$$StatValuesImplCopyWith<$Res> {
  __$$StatValuesImplCopyWithImpl(
      _$StatValuesImpl _value, $Res Function(_$StatValuesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatValues
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eatenGoldenApples = freezed,
    Object? money = freezed,
    Object? itemsCrafted = freezed,
    Object? deaths = freezed,
    Object? animalBreed = freezed,
    Object? brokenTools = freezed,
    Object? kills = freezed,
    Object? placedBlocks = freezed,
    Object? xpGained = freezed,
    Object? dealtDamage = freezed,
    Object? thrownEnderPearls = freezed,
    Object? walkedDistance = freezed,
    Object? mobKills = freezed,
    Object? playedTime = freezed,
    Object? minedBlocks = freezed,
  }) {
    return _then(_$StatValuesImpl(
      eatenGoldenApples: freezed == eatenGoldenApples
          ? _value.eatenGoldenApples
          : eatenGoldenApples // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsCrafted: freezed == itemsCrafted
          ? _value.itemsCrafted
          : itemsCrafted // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: freezed == deaths
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      animalBreed: freezed == animalBreed
          ? _value.animalBreed
          : animalBreed // ignore: cast_nullable_to_non_nullable
              as int?,
      brokenTools: freezed == brokenTools
          ? _value.brokenTools
          : brokenTools // ignore: cast_nullable_to_non_nullable
              as int?,
      kills: freezed == kills
          ? _value.kills
          : kills // ignore: cast_nullable_to_non_nullable
              as int?,
      placedBlocks: freezed == placedBlocks
          ? _value.placedBlocks
          : placedBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
      xpGained: freezed == xpGained
          ? _value.xpGained
          : xpGained // ignore: cast_nullable_to_non_nullable
              as int?,
      dealtDamage: freezed == dealtDamage
          ? _value.dealtDamage
          : dealtDamage // ignore: cast_nullable_to_non_nullable
              as int?,
      thrownEnderPearls: freezed == thrownEnderPearls
          ? _value.thrownEnderPearls
          : thrownEnderPearls // ignore: cast_nullable_to_non_nullable
              as int?,
      walkedDistance: freezed == walkedDistance
          ? _value.walkedDistance
          : walkedDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      mobKills: freezed == mobKills
          ? _value.mobKills
          : mobKills // ignore: cast_nullable_to_non_nullable
              as int?,
      playedTime: freezed == playedTime
          ? _value.playedTime
          : playedTime // ignore: cast_nullable_to_non_nullable
              as int?,
      minedBlocks: freezed == minedBlocks
          ? _value.minedBlocks
          : minedBlocks // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatValuesImpl implements _StatValues {
  const _$StatValuesImpl(
      {this.eatenGoldenApples,
      this.money,
      this.itemsCrafted,
      this.deaths,
      this.animalBreed,
      this.brokenTools,
      this.kills,
      this.placedBlocks,
      this.xpGained,
      this.dealtDamage,
      this.thrownEnderPearls,
      this.walkedDistance,
      this.mobKills,
      this.playedTime,
      this.minedBlocks});

  factory _$StatValuesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatValuesImplFromJson(json);

  @override
  final int? eatenGoldenApples;
  @override
  final int? money;
  @override
  final int? itemsCrafted;
  @override
  final int? deaths;
  @override
  final int? animalBreed;
  @override
  final int? brokenTools;
  @override
  final int? kills;
  @override
  final int? placedBlocks;
  @override
  final int? xpGained;
  @override
  final int? dealtDamage;
  @override
  final int? thrownEnderPearls;
  @override
  final int? walkedDistance;
  @override
  final int? mobKills;
  @override
  final int? playedTime;
  @override
  final int? minedBlocks;

  @override
  String toString() {
    return 'StatValues(eatenGoldenApples: $eatenGoldenApples, money: $money, itemsCrafted: $itemsCrafted, deaths: $deaths, animalBreed: $animalBreed, brokenTools: $brokenTools, kills: $kills, placedBlocks: $placedBlocks, xpGained: $xpGained, dealtDamage: $dealtDamage, thrownEnderPearls: $thrownEnderPearls, walkedDistance: $walkedDistance, mobKills: $mobKills, playedTime: $playedTime, minedBlocks: $minedBlocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatValuesImpl &&
            (identical(other.eatenGoldenApples, eatenGoldenApples) ||
                other.eatenGoldenApples == eatenGoldenApples) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.itemsCrafted, itemsCrafted) ||
                other.itemsCrafted == itemsCrafted) &&
            (identical(other.deaths, deaths) || other.deaths == deaths) &&
            (identical(other.animalBreed, animalBreed) ||
                other.animalBreed == animalBreed) &&
            (identical(other.brokenTools, brokenTools) ||
                other.brokenTools == brokenTools) &&
            (identical(other.kills, kills) || other.kills == kills) &&
            (identical(other.placedBlocks, placedBlocks) ||
                other.placedBlocks == placedBlocks) &&
            (identical(other.xpGained, xpGained) ||
                other.xpGained == xpGained) &&
            (identical(other.dealtDamage, dealtDamage) ||
                other.dealtDamage == dealtDamage) &&
            (identical(other.thrownEnderPearls, thrownEnderPearls) ||
                other.thrownEnderPearls == thrownEnderPearls) &&
            (identical(other.walkedDistance, walkedDistance) ||
                other.walkedDistance == walkedDistance) &&
            (identical(other.mobKills, mobKills) ||
                other.mobKills == mobKills) &&
            (identical(other.playedTime, playedTime) ||
                other.playedTime == playedTime) &&
            (identical(other.minedBlocks, minedBlocks) ||
                other.minedBlocks == minedBlocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eatenGoldenApples,
      money,
      itemsCrafted,
      deaths,
      animalBreed,
      brokenTools,
      kills,
      placedBlocks,
      xpGained,
      dealtDamage,
      thrownEnderPearls,
      walkedDistance,
      mobKills,
      playedTime,
      minedBlocks);

  /// Create a copy of StatValues
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatValuesImplCopyWith<_$StatValuesImpl> get copyWith =>
      __$$StatValuesImplCopyWithImpl<_$StatValuesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatValuesImplToJson(
      this,
    );
  }
}

abstract class _StatValues implements StatValues {
  const factory _StatValues(
      {final int? eatenGoldenApples,
      final int? money,
      final int? itemsCrafted,
      final int? deaths,
      final int? animalBreed,
      final int? brokenTools,
      final int? kills,
      final int? placedBlocks,
      final int? xpGained,
      final int? dealtDamage,
      final int? thrownEnderPearls,
      final int? walkedDistance,
      final int? mobKills,
      final int? playedTime,
      final int? minedBlocks}) = _$StatValuesImpl;

  factory _StatValues.fromJson(Map<String, dynamic> json) =
      _$StatValuesImpl.fromJson;

  @override
  int? get eatenGoldenApples;
  @override
  int? get money;
  @override
  int? get itemsCrafted;
  @override
  int? get deaths;
  @override
  int? get animalBreed;
  @override
  int? get brokenTools;
  @override
  int? get kills;
  @override
  int? get placedBlocks;
  @override
  int? get xpGained;
  @override
  int? get dealtDamage;
  @override
  int? get thrownEnderPearls;
  @override
  int? get walkedDistance;
  @override
  int? get mobKills;
  @override
  int? get playedTime;
  @override
  int? get minedBlocks;

  /// Create a copy of StatValues
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatValuesImplCopyWith<_$StatValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
