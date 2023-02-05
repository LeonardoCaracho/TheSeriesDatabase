// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeasonModel _$$_SeasonModelFromJson(Map<String, dynamic> json) =>
    _$_SeasonModel(
      season: json['season'] as int,
      episodes: (json['episodes'] as List<dynamic>)
          .map((e) => EpisodeDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeasonModelToJson(_$_SeasonModel instance) =>
    <String, dynamic>{
      'season': instance.season,
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
    };
