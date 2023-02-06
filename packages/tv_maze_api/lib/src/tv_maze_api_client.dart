import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tv_maze_api/tv_maze_api.dart';

/// {@template tv_maze_api_client}
/// A Very Good TsdbRepository.
/// {@endtemplate}
class TvMazeApiClient {
  /// {@macro tv_maze_api_client}
  TvMazeApiClient({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  /// Finds all [List<EpisodesResponseModel>] `/shows/(query)/episodes`.
  Future<List<EpisodesResponseModel>> getAllEpisodesByShowId(int showId) async {
    final episodesRequest = Uri.https(
      TvMazeApiEndpoints.baseUrl,
      TvMazeApiEndpoints.episodesByShowIdPath(showId),
    );

    final episodesResponse = await _httpClient.get(episodesRequest);

    if (episodesResponse.statusCode != 200) {
      throw EpisodesRequestFailure();
    }

    final episodesJson = jsonDecode(
      episodesResponse.body,
    ) as List<dynamic>;

    return episodesJson
        .map(
          (e) => EpisodesResponseModel.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  /// Find a [EpisodesResponseModel] `/episodes/(query)`.
  Future<EpisodesResponseModel> getEpisodeDetailsById(int episodeId) async {
    final episodeDetailsRequest = Uri.https(
      TvMazeApiEndpoints.baseUrl,
      TvMazeApiEndpoints.episodeDetailsByIdPath(episodeId),
    );

    final episodeDetailsResponse = await _httpClient.get(episodeDetailsRequest);

    if (episodeDetailsResponse.statusCode != 200) {
      throw EpisodeDetailsRequestFailure();
    }

    final episodeDetailsJson = jsonDecode(
      episodeDetailsResponse.body,
    ) as Map<String, dynamic>;

    return EpisodesResponseModel.fromJson(episodeDetailsJson);
  }

  /// Finds all [List<TvShowResponseModel>] `/shows/(query)`.
  Future<List<TvShowResponseModel>> getTvShowsWithPagination(int page) async {
    final tvShowsRequest = Uri.https(
      TvMazeApiEndpoints.baseUrl,
      TvMazeApiEndpoints.getTvShowsPath,
      {
        'page': page.toString(),
      },
    );

    final tvShowsResponse = await _httpClient.get(tvShowsRequest);

    if (tvShowsResponse.statusCode != 200) {
      throw TvShowsRequestFailure();
    }

    final tvShowsJson = jsonDecode(
      tvShowsResponse.body,
    ) as List<dynamic>;

    return tvShowsJson
        .map(
          (s) => TvShowResponseModel.fromJson(s as Map<String, dynamic>),
        )
        .toList();
  }

  /// Finds all [List<TvShowSearchResponseModel>] `/search/shows/(query)`.
  Future<List<TvShowSearchResponseModel>> getTvShowsBySearch(String search) async {
    final tvShowsRequest = Uri.https(
      TvMazeApiEndpoints.baseUrl,
      TvMazeApiEndpoints.getTvShowsBySearchPath,
      {'q': search},
    );

    final tvShowsResponse = await _httpClient.get(tvShowsRequest);

    if (tvShowsResponse.statusCode != 200) {
      throw TvShowsRequestFailure();
    }

    final tvShowsJson = jsonDecode(
      tvShowsResponse.body,
    ) as List;

    return tvShowsJson
        .map(
          (s) => TvShowSearchResponseModel.fromJson(
            s as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  /// Finds a [TvShowResponseModel] `/shows/(query)`.
  Future<TvShowResponseModel> getTvShowsDetailsById(int id) async {
    final tvShowRequest = Uri.https(
      TvMazeApiEndpoints.baseUrl,
      TvMazeApiEndpoints.getTvShowDetailsByIdPath(id),
    );

    final tvShowResponse = await _httpClient.get(tvShowRequest);

    if (tvShowResponse.statusCode != 200) {
      throw TvShowDetailsRequestFailure();
    }

    final tvShowJson = jsonDecode(
      tvShowResponse.body,
    ) as Map<String, dynamic>;

    return TvShowResponseModel.fromJson(tvShowJson);
  }
}
