import 'package:tsdb_repository/src/models/tv_show_model.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

/// {@template tsdb_repository}
/// A Very Good TsdbRepository.
/// {@endtemplate}
abstract class TsdbRepository {
  /// return tv shows by page
  Future<List<TvShowModel>> getTvShows(int page);

  /// return tv shows by searching
  Future<List<TvShowModel>> getTvShowsBySearch(String query);

  /// return all the seasons and episodes for a given tv show id
  Future<List<SeasonModel>> getTvShowSeasonsAndEpisodes(int tvShowId);
}
