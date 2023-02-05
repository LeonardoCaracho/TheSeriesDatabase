import 'package:tsdb_repository/tsdb_repository.dart';

/// {@template tsdb_repository}
/// A Very Good TsdbRepository .Implementation
/// {@endtemplate}
class TsdbRepositoryImpl implements TsdbRepository {
  @override
  Future<List<SeasonModel>> getTvShowSeasonsAndEpisodes(int tvShowId) {
    // TODO: implement getTvShowSeasonsAndEpisodes
    throw UnimplementedError();
  }

  @override
  Future<List<TvShowModel>> getTvShows(int page) {
    // TODO: implement getTvShows
    throw UnimplementedError();
  }

  @override
  Future<List<TvShowModel>> getTvShowsBySearch(String query) {
    // TODO: implement getTvShowsBySearch
    throw UnimplementedError();
  }
}
