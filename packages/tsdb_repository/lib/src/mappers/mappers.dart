import 'package:tsdb_repository/tsdb_repository.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

///Map TvShowResponseModel from MazeApi to TvShowModel
TvShowModel mapToTvShowModel(TvShowResponseModel s) => TvShowModel(
      id: s.id,
      name: s.name,
      genres: s.genres,
      imageUrl: s.image?.medium,
      summary: s.summary,
      exhibitionDays: s.schedule.days,
      exhibitionHour: s.schedule.time,
    );

///Map EpisodesResponseModel from MazeApi to EpisodeDetailsModel
EpisodeDetailsModel mapToEpisodeDetailsModel(
  EpisodesResponseModel e,
) =>
    EpisodeDetailsModel(
      id: e.id,
      name: e.name,
      season: e.season,
      number: e.number,
      summary: e.summary,
      imageUrl: e.image?.medium,
    );
