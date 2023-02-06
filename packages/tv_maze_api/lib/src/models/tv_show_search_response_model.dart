// review.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

part 'tv_show_search_response_model.freezed.dart';
part 'tv_show_search_response_model.g.dart';

/// Tv shows model class based on tvmaze api response
@freezed
class TvShowSearchResponseModel with _$TvShowSearchResponseModel {
  /// TvShowSearchResponseModel freezed factory
  factory TvShowSearchResponseModel({
    required TvShowResponseModel show,
  }) = _TvShowSearchResponseModel;

  /// TvShowSearchResponseModel fromJson model
  factory TvShowSearchResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TvShowSearchResponseModelFromJson(json);
}
