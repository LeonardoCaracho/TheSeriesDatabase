// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodesResponseModel _$$_EpisodesResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_EpisodesResponseModel(
      id: json['id'] as int,
      name: json['name'] as String,
      season: json['season'] as int,
      number: json['number'] as int,
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$_EpisodesResponseModelToJson(
        _$_EpisodesResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'season': instance.season,
      'number': instance.number,
      'image': instance.image,
      'summary': instance.summary,
    };
