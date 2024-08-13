import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_model.freezed.dart';
part 'stats_model.g.dart';

@freezed
class StatsModel with _$StatsModel {
  const factory StatsModel({
    required bool success,
    required StatValues values,
  }) = _StatsModel;

  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);
}

@freezed
class StatValues with _$StatValues {
  const factory StatValues({
    int? eatenGoldenApples,
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
    int? minedBlocks,
  }) = _StatValues;

  factory StatValues.fromJson(Map<String, dynamic> json) => _$StatValuesFromJson({
    'eatenGoldenApples': _safeParseInt(json['EATEN_GOLDEN_APPLES']),
    'money': _safeParseInt(json['MONEY']),
    'itemsCrafted': _safeParseInt(json['ITEMS_CRAFTED']),
    'deaths': _safeParseInt(json['DEATHS']),
    'animalBreed': _safeParseInt(json['ANIMAL_BREED']),
    'brokenTools': _safeParseInt(json['BROKEN_TOOLS']),
    'kills': _safeParseInt(json['KILLS']),
    'placedBlocks': _safeParseInt(json['PLACED_BLOCKS']),
    'xpGained': _safeParseInt(json['XP_GAINED']),
    'dealtDamage': _safeParseInt(json['DEALT_DAMAGE']),
    'thrownEnderPearls': _safeParseInt(json['THROWN_ENDER_PEARLS']),
    'walkedDistance': _safeParseInt(json['WALKED_DISTANCE']),
    'mobKills': _safeParseInt(json['MOB_KILLS']),
    'playedTime': _safeParseInt(json['PLAYED_TIME']),
    'minedBlocks': _safeParseInt(json['MINED_BLOCKS']),
  });

  @override
  Map<String, dynamic> toJson() => {
    'EATEN_GOLDEN_APPLES': eatenGoldenApples,
    'MONEY': money,
    'ITEMS_CRAFTED': itemsCrafted,
    'DEATHS': deaths,
    'ANIMAL_BREED': animalBreed,
    'BROKEN_TOOLS': brokenTools,
    'KILLS': kills,
    'PLACED_BLOCKS': placedBlocks,
    'XP_GAINED': xpGained,
    'DEALT_DAMAGE': dealtDamage,
    'THROWN_ENDER_PEARLS': thrownEnderPearls,
    'WALKED_DISTANCE': walkedDistance,
    'MOB_KILLS': mobKills,
    'PLAYED_TIME': playedTime,
    'MINED_BLOCKS': minedBlocks,
  };
}

int? _safeParseInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is double) return value.toInt();
  if (value is String) return int.tryParse(value);
  return null;
}