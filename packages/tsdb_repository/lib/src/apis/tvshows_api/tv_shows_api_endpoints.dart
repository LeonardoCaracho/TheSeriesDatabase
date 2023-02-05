/// TvShows Api endpoints
class TvShowsApiEndpoints {
  /// TvShows Api base url
  static const tvShowsBaseUrl = 'https://api.tvmaze.com';

  /// get tv show details by show id url
  static String getTvShowDetailsByIdPath(int showId) => '/shows/$showId';

  /// get tv shows with pagination url
  static String getTvShowsPath = '/shows';

  /// get tv shows by search
  static String getTvShowsBySearchPath = '/search/shows';
}
