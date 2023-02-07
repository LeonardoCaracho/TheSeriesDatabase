import 'package:tsdb_repository/tsdb_repository.dart';

final episodeMock = EpisodeDetailsModel(
  id: 34,
  name: 'Face Off',
  number: 13,
  season: 4,
  summary: 'summary mock',
  imageUrl: 'https://image.url',
);

final seasonEpisodesMock = [
  SeasonModel(
    season: 4,
    episodes: [
      EpisodeDetailsModel(
        id: 34,
        name: 'Face Off',
        number: 13,
        season: 4,
        summary: 'summary mock',
        imageUrl: 'https://image.url',
      ),
    ],
  ),
  SeasonModel(
    season: 5,
    episodes: [
      EpisodeDetailsModel(
        id: 56,
        name: 'Granite State',
        number: 15,
        season: 5,
        summary: 'summary mock',
        imageUrl: 'https://image.url',
      ),
      EpisodeDetailsModel(
        id: 57,
        name: 'Felina',
        number: 16,
        season: 5,
        summary: 'summary mock',
        imageUrl: 'https://image.url',
      ),
    ],
  ),
];
