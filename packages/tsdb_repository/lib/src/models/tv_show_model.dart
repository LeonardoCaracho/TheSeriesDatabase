import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_model.freezed.dart';
part 'tv_show_model.g.dart';

/// Tv shows model class based on tvmaze api response
@freezed
class TvShowModel with _$TvShowModel {
  /// TvShowModel freezed factory
  factory TvShowModel({
    required int id,
    required String name,
    required List<String> genres,
    String? exhibitionHour,
    List<String>? exhibitionDays,
    String? imageUrl,
    required String summary,
  }) = _TvShowModel;

  /// TvShowModel fromJson model
  factory TvShowModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TvShowModelFromJson(json);
}
