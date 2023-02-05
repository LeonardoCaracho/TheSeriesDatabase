// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodesModel _$$_EpisodesModelFromJson(Map<String, dynamic> json) =>
    _$_EpisodesModel(
      id: json['id'] as int,
      name: json['name'] as String,
      season: json['season'] as int,
      number: json['number'] as int,
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$_EpisodesModelToJson(_$_EpisodesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'season': instance.season,
      'number': instance.number,
      'image': instance.image,
      'summary': instance.summary,
    };
