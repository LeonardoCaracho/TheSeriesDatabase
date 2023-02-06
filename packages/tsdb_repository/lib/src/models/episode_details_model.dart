import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_details_model.freezed.dart';
part 'episode_details_model.g.dart';

/// Episodes model class based on tvmaze api response
@freezed
class EpisodeDetailsModel with _$EpisodeDetailsModel {
  /// EpisodeDetailsModel freezed factory
  factory EpisodeDetailsModel({
    required int id,
    required String name,
    required int season,
    required int number,
    String? imageUrl,
    String? summary,
  }) = _EpisodeDetailsModel;

  /// EpisodeDetailsModel fromJson model
  factory EpisodeDetailsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EpisodeDetailsModelFromJson(json);
}
