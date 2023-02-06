// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodeDetailsModel _$$_EpisodeDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_EpisodeDetailsModel(
      id: json['id'] as int,
      name: json['name'] as String,
      season: json['season'] as int,
      number: json['number'] as int,
      imageUrl: json['imageUrl'] as String?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$_EpisodeDetailsModelToJson(
        _$_EpisodeDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'season': instance.season,
      'number': instance.number,
      'imageUrl': instance.imageUrl,
      'summary': instance.summary,
    };
