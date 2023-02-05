// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tvshow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvShowModel _$$_TvShowModelFromJson(Map<String, dynamic> json) =>
    _$_TvShowModel(
      id: json['id'] as int,
      name: json['name'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      schedule:
          ScheduleModel.fromJson(json['schedule'] as Map<String, dynamic>),
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$_TvShowModelToJson(_$_TvShowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genres': instance.genres,
      'schedule': instance.schedule,
      'image': instance.image,
      'summary': instance.summary,
    };
