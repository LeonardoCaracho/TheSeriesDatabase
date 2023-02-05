/// Episode Api endpoints
class EpisodesApiEndpoints {
  /// EpisodesApi base url
  static const episodesBaseUrl = 'https://api.tvmaze.com';

  /// get episodes by show id url
  static String episodesByShowIdPath(int showId) => '/shows/$showId/episodes';

  /// get episode details by id url
  static String episodeDetailsByIdPath(int episodeId) => '/episodes/$episodeId';
}
