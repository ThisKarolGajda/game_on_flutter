// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsModelImpl _$$StatsModelImplFromJson(Map<String, dynamic> json) =>
    _$StatsModelImpl(
      success: json['success'] as bool,
      values: StatValues.fromJson(json['values'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatsModelImplToJson(_$StatsModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'values': instance.values,
    };

_$StatValuesImpl _$$StatValuesImplFromJson(Map<String, dynamic> json) =>
    _$StatValuesImpl(
      eatenGoldenApples: (json['eatenGoldenApples'] as num?)?.toInt(),
      money: (json['money'] as num?)?.toInt(),
      itemsCrafted: (json['itemsCrafted'] as num?)?.toInt(),
      deaths: (json['deaths'] as num?)?.toInt(),
      animalBreed: (json['animalBreed'] as num?)?.toInt(),
      brokenTools: (json['brokenTools'] as num?)?.toInt(),
      kills: (json['kills'] as num?)?.toInt(),
      placedBlocks: (json['placedBlocks'] as num?)?.toInt(),
      xpGained: (json['xpGained'] as num?)?.toInt(),
      dealtDamage: (json['dealtDamage'] as num?)?.toInt(),
      thrownEnderPearls: (json['thrownEnderPearls'] as num?)?.toInt(),
      walkedDistance: (json['walkedDistance'] as num?)?.toInt(),
      mobKills: (json['mobKills'] as num?)?.toInt(),
      playedTime: (json['playedTime'] as num?)?.toInt(),
      minedBlocks: (json['minedBlocks'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StatValuesImplToJson(_$StatValuesImpl instance) =>
    <String, dynamic>{
      'eatenGoldenApples': instance.eatenGoldenApples,
      'money': instance.money,
      'itemsCrafted': instance.itemsCrafted,
      'deaths': instance.deaths,
      'animalBreed': instance.animalBreed,
      'brokenTools': instance.brokenTools,
      'kills': instance.kills,
      'placedBlocks': instance.placedBlocks,
      'xpGained': instance.xpGained,
      'dealtDamage': instance.dealtDamage,
      'thrownEnderPearls': instance.thrownEnderPearls,
      'walkedDistance': instance.walkedDistance,
      'mobKills': instance.mobKills,
      'playedTime': instance.playedTime,
      'minedBlocks': instance.minedBlocks,
    };
