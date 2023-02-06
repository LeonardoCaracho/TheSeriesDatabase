// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvShowModel _$$_TvShowModelFromJson(Map<String, dynamic> json) =>
    _$_TvShowModel(
      id: json['id'] as int,
      name: json['name'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      exhibitionHour: json['exhibitionHour'] as String?,
      exhibitionDays: (json['exhibitionDays'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$_TvShowModelToJson(_$_TvShowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genres': instance.genres,
      'exhibitionHour': instance.exhibitionHour,
      'exhibitionDays': instance.exhibitionDays,
      'imageUrl': instance.imageUrl,
      'summary': instance.summary,
    };
