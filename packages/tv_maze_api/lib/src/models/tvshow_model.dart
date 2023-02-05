// review.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

part 'tvshow_model.freezed.dart';
part 'tvshow_model.g.dart';

/// Tv shows model class based on tvmaze api response
@freezed
class TvShowModel with _$TvShowModel {
  /// TvShowModel freezed factory
  factory TvShowModel({
    required int id,
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
