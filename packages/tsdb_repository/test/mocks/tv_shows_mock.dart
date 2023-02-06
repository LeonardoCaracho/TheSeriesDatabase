import 'package:tv_maze_api/tv_maze_api.dart';

final tvShowsResponse = [
  TvShowResponseModel(
    id: 1,
    name: 'Breaking bad',
    genres: ['action'],
    schedule: ScheduleModel(
      time: '10:00 PM',
      days: ['Monday'],
    ),
    image: ImageModel(medium: 'https://image.url'),
    summary: 'summary',
  ),
];

final tvShowsSearcnResponse = [
  TvShowSearchResponseModel(
    show: TvShowResponseModel(
      id: 1,
      name: 'Breaking bad',
      genres: ['action'],
      schedule: ScheduleModel(
        time: '10:00 PM',
        days: ['Monday'],
      ),
      image: ImageModel(medium: 'https://image.url'),
      summary: 'summary',
    ),
  ),
];
