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

      var seasonCounter = 1;
      final seasonsList = <SeasonModel>[];
      final episodesList = <EpisodeDetailsModel>[];

      for (final episode in episodesResponse) {
        if (episode.season == seasonCounter) {
          episodesList.add(
            EpisodeDetailsModel(
              id: episode.id,
              name: episode.name,
              season: episode.season,
              number: episode.number,
              summary: episode.summary,
            ),
          );
        } else {
          seasonsList.add(
            SeasonModel(
              season: seasonCounter,
              episodes: episodesList,
            ),
          );

          episodesList.clear();

          episodesList.add(
            EpisodeDetailsModel(
              id: episode.id,
              name: episode.name,
              season: episode.season,
              number: episode.number,
              summary: episode.summary,
            ),
          );

          seasonCounter++;
        }
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
      return tvShowsResponse.map(mapToTvShowModel).toList();
    } catch (e) {
      throw GetTvshowsBySearchFailure();
    }
  }
}
