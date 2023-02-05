/// TvShows Api endpoints
class TvMazeApiEndpoints {
  /// TvShows Api base url
  static const baseUrl = 'https://api.tvmaze.com';

  /// get tv show details by show id url
  static String getTvShowDetailsByIdPath(int showId) => '/shows/$showId';

  /// get tv shows with pagination url
  static String getTvShowsPath = '/shows';

  /// get tv shows by search
  static String getTvShowsBySearchPath = '/search/shows';

  /// get episodes by show id url
  static String episodesByShowIdPath(int showId) => '/shows/$showId/episodes';

  /// get episode details by id url
  static String episodeDetailsByIdPath(int episodeId) => '/episodes/$episodeId';
}
