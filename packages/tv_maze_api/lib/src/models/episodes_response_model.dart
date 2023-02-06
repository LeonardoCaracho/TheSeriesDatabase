// review.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

part 'episodes_response_model.freezed.dart';
part 'episodes_response_model.g.dart';

/// Episodes model class based on tvmaze api response
@freezed
class EpisodesResponseModel with _$EpisodesResponseModel {
  /// EpisodesResponseModel freezed factory
  factory EpisodesResponseModel({
    required int id,
    required String name,
    required int season,
    required int number,
    @JsonKey(name: 'image') ImageModel? image,
    String? summary,
  }) = _EpisodesResponseModel;

  /// EpisodesResponseModel fromJson model
  factory EpisodesResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EpisodesResponseModelFromJson(json);
}
