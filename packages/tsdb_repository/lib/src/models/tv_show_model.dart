import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_model.freezed.dart';
part 'tv_show_model.g.dart';

/// Tv shows model class based on tvmaze api response
@freezed
class TvShowModel extends Equatable with _$TvShowModel {
  const TvShowModel._();

  /// TvShowModel freezed factory
  factory TvShowModel({
    required int id,
    required String name,
    required List<String> genres,
    String? exhibitionHour,
    List<String>? exhibitionDays,
    required String imageUrl,
    required String summary,
  }) = _TvShowModel;

  /// TvShowModel fromJson model
  factory TvShowModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TvShowModelFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        genres,
        exhibitionHour,
        exhibitionDays,
        imageUrl,
        summary,
      ];
}
