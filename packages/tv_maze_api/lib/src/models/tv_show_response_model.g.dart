// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvShowResponseModel _$$_TvShowResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_TvShowResponseModel(
      id: json['id'] as int,
      name: json['name'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      schedule:
          ScheduleModel.fromJson(json['schedule'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$_TvShowResponseModelToJson(
        _$_TvShowResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genres': instance.genres,
      'schedule': instance.schedule,
      'image': instance.image,
      'summary': instance.summary,
    };
