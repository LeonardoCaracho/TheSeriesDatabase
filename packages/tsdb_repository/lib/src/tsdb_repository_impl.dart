import 'package:collection/collection.dart';
import 'package:tsdb_repository/tsdb_repository.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

/// {@template tsdb_repository}
/// A Very Good TsdbRepository .Implementation
/// {@endtemplate}
class TsdbRepositoryImpl implements TsdbRepository {
  /// TsdbRepositoryImpl constructor
  TsdbRepositoryImpl({
    required this.apiClient,
  });

  /// Tv maze api client
  final TvMazeApiClient apiClient;

  @override
  Future<List<SeasonModel>> getTvShowSeasonsAndEpisodes(int tvShowId) async {
    try {
      final episodesResponse = await apiClient.getAllEpisodesByShowId(tvShowId);

      final seasonsList = <SeasonModel>[];

      final episodesGroupedBySeason = groupBy(
        episodesResponse,
        (obj) => obj.season,
      );

      for (final season in episodesGroupedBySeason.values) {
        seasonsList.add(
          SeasonModel(
            season: season.first.season,
            episodes: season.map(mapToEpisodeDetailsModel).toList(),
          ),
        );
      }

      return seasonsList;
    } catch (e) {
      throw GetTvshowSeasonsFailure();
    }
  }

  @override
  Future<List<TvShowModel>> getTvShows(int page) async {
    try {
      final tvShowsResponse = await apiClient.getTvShowsWithPagination(page);
      return tvShowsResponse.map(mapToTvShowModel).toList();
    } catch (e) {
      throw GetTvshowsFailure();
    }
  }

  @override
  Future<List<TvShowModel>> getTvShowsBySearch(String query) async {
    try {
      final tvShowsResponse = await apiClient.getTvShowsBySearch(query);
      return tvShowsResponse.map((s) => mapToTvShowModel(s.show)).toList();
    } catch (e) {
      throw GetTvshowsBySearchFailure();
    }
  }
}
