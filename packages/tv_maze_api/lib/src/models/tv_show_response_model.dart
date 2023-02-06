// review.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

part 'tv_show_response_model.freezed.dart';
part 'tv_show_response_model.g.dart';

/// Tv shows model class based on tvmaze api response
@freezed
class TvShowResponseModel with _$TvShowResponseModel {
  /// TvShowResponseModel freezed factory
  factory TvShowResponseModel({
    required int id,
    required String name,
    required List<String> genres,
    required ScheduleModel schedule,
    ImageModel? image,
    String? summary,
  }) = _TvShowResponseModel;

  /// TvShowResponseModel fromJson model
  factory TvShowResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TvShowResponseModelFromJson(json);
}
