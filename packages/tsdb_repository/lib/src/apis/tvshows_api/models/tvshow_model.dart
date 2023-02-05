// review.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tsdb_repository/src/apis/tvshows_api/tvshows_api.dart';

part 'tvshow_model.freezed.dart';
part 'tvshow_model.g.dart';

/// Tv shows model class based on tvmaze api response
@freezed
class TvShowModel with _$TvShowModel {
  /// TvShowModel freezed factory
  factory TvShowModel({
    required String id,
    required String name,
    required List<String> genres,
    required ScheduleModel schedule,
    required ImageModel image,
    required String summary,
  }) = _TvShowModel;

  /// TvShowModel fromJson model
  factory TvShowModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TvShowModelFromJson(json);
}
