import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tsdb_repository/tsdb_repository.dart';

/// Exception thrown when get tv shows fails.
class TvShowsRequestFailure implements Exception {}

/// Episodes Api client implementation
class TvShowsApiClient {
  /// {@macro episodes_api_client}
  TvShowsApiClient({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  /// Finds all [List<TvShowModel>] `/shows/(query)`.
  Future<List<TvShowModel>> getTvShowsWithPagination(int page) async {
    final tvShowsRequest = Uri.https(
      TvShowsApiEndpoints.tvShowsBaseUrl,
      TvShowsApiEndpoints.getTvShowsPath,
      {'page': page},
    );

    final tvShowsResponse = await _httpClient.get(tvShowsRequest);

    if (tvShowsResponse.statusCode != 200) {
      throw TvShowsRequestFailure();
    }

    final tvShowsJson = jsonDecode(
      tvShowsResponse.body,
    ) as List<Map<String, dynamic>>;

    return tvShowsJson.map(TvShowModel.fromJson).toList();
  }

  /// Finds all [List<TvShowModel>] `/search/shows/(query)`.
  Future<List<TvShowModel>> getTvShowsBySearch(String search) async {
    final tvShowsRequest = Uri.https(
      TvShowsApiEndpoints.tvShowsBaseUrl,
      TvShowsApiEndpoints.getTvShowsBySearchPath,
      {'q': search},
    );

    final tvShowsResponse = await _httpClient.get(tvShowsRequest);

    if (tvShowsResponse.statusCode != 200) {
      throw TvShowsRequestFailure();
    }

    final tvShowsJson = jsonDecode(
      tvShowsResponse.body,
    ) as List<Map<String, dynamic>>;

    return tvShowsJson.map(TvShowModel.fromJson).toList();
  }

  /// Finds a [TvShowModel] `/shows/(query)`.
  Future<TvShowModel> getTvShowsDetailsById(int id) async {
    final tvShowRequest = Uri.https(
      TvShowsApiEndpoints.tvShowsBaseUrl,
      TvShowsApiEndpoints.getTvShowDetailsByIdPath(id),
    );

    final tvShowResponse = await _httpClient.get(tvShowRequest);

    if (tvShowResponse.statusCode != 200) {
      throw TvShowsRequestFailure();
    }

    final tvShowJson = jsonDecode(
      tvShowResponse.body,
    ) as Map<String, dynamic>;

    return TvShowModel.fromJson(tvShowJson);
  }
}
