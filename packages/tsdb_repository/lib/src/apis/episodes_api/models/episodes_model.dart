// review.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tsdb_repository/src/apis/episodes_api/episodes_api.dart';

part 'episodes_model.freezed.dart';
part 'episodes_model.g.dart';

/// Episodes model class based on tvmaze api response
@freezed
class EpisodesModel with _$EpisodesModel {
  /// EpisodesModel freezed factory
  factory EpisodesModel({
    required int id,
    required String name,
    required int season,
    required int number,
    @JsonKey(name: 'image') required EpisodeImageModel episodeImage,
    required String summary,
  }) = _EpisodesModel;

  /// EpisodesModel fromJson model
  factory EpisodesModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EpisodesModelFromJson(json);
}
