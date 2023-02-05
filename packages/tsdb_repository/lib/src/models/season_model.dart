import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

part 'season_model.freezed.dart';
part 'season_model.g.dart';

/// Episodes model class based on tvmaze api response
@freezed
class SeasonModel with _$SeasonModel {
  /// SeasonModel freezed factory
  factory SeasonModel({
    required int season,
    required List<EpisodeDetailsModel> episodes,
  }) = _SeasonModel;

  /// SeasonModel fromJson model
  factory SeasonModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SeasonModelFromJson(json);
}
