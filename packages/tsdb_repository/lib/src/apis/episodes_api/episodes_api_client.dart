import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tsdb_repository/tsdb_repository.dart';

/// Exception thrown when get episodes fails.
class EpisodesRequestFailure implements Exception {}

/// Episodes Api client implementation
class EpisodesApiClient {
  /// {@macro episodes_api_client}
  EpisodesApiClient({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  /// Finds all [List<EpisodesModel>] `/shows/(query)/episodes`.
  Future<List<EpisodesModel>> getAllEpisodesByShowId(int showId) async {
    final episodesRequest = Uri.https(
      EpisodesApiEndpoints.episodesBaseUrl,
      EpisodesApiEndpoints.episodesByShowIdPath(showId),
    );

    final episodesResponse = await _httpClient.get(episodesRequest);

    if (episodesResponse.statusCode != 200) {
      throw EpisodesRequestFailure();
    }

    final episodesJson = jsonDecode(
      episodesResponse.body,
    ) as List<Map<String, dynamic>>;

    return episodesJson.map(EpisodesModel.fromJson).toList();
  }

  /// Find a [EpisodesModel] `/episodes/(query)`.
  Future<EpisodesModel> getEpisodeDetailsById(int episodeId) async {
    final episodeDetailsRequest = Uri.https(
      EpisodesApiEndpoints.episodesBaseUrl,
      EpisodesApiEndpoints.episodeDetailsByIdPath(episodeId),
    );

    final episodeDetailsResponse = await _httpClient.get(episodeDetailsRequest);

    if (episodeDetailsResponse.statusCode != 200) {
      throw EpisodesRequestFailure();
    }

    final episodeDetailsJson = jsonDecode(
      episodeDetailsResponse.body,
    ) as Map<String, dynamic>;

    return EpisodesModel.fromJson(episodeDetailsJson);
  }
}
