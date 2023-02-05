import 'package:tv_maze_api/tv_maze_api.dart';

final episodesResponse = [
  EpisodesResponseModel(
    id: 1,
    image: ImageModel(medium: 'https://image.url'),
    name: 'Felina',
    number: 16,
    season: 5,
    summary: 'summary mock',
  ),
];

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
