import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_image_model.freezed.dart';
part 'episode_image_model.g.dart';

/// Image model class based on tvmaze api response
@freezed
class EpisodeImageModel with _$EpisodeImageModel {
  /// EpisodeImageModel freezed factory
  factory EpisodeImageModel({
    required String medium,
  }) = _EpisodeImageModel;

  /// EpisodeImageModel fromJson model
  factory EpisodeImageModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EpisodeImageModelFromJson(json);
}
