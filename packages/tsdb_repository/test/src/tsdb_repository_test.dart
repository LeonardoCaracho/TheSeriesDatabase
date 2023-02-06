// ignore_for_file: prefer_const_constructors
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:tsdb_repository/tsdb_repository.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

import '../mocks/mocks.dart';

class MockTvMazeApiClient extends Mock implements TvMazeApiClient {}

void main() {
  late TvMazeApiClient apiClient;
  late TsdbRepository tsdbRepository;

  setUp(() {
    apiClient = MockTvMazeApiClient();
    tsdbRepository = TsdbRepositoryImpl(apiClient: apiClient);
  });

  group('TsdbRepository', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(TsdbRepositoryImpl(apiClient: apiClient), isNotNull);
      });
    });

    group('getTvShowsBySearch', () {
      const query = 'query';
      test('should return tv shows on success', () async {
        final expected = [
          TvShowModel(
            id: 1,
            name: 'Breaking bad',
            genres: const ['action'],
            imageUrl: 'https://image.url',
            summary: 'summary',
            exhibitionDays: const ['Monday'],
            exhibitionHour: '10:00 PM',
          )
        ];
        when(
          () => apiClient.getTvShowsBySearch(query),
        ).thenAnswer((_) async => tvShowsSearcnResponse);

        final actual = await tsdbRepository.getTvShowsBySearch(query);

        expect(actual, expected);
      });

      test('throws when getTvShowsBySearch fails', () async {
        when(() => apiClient.getTvShowsBySearch(query)).thenThrow(Exception());

        expect(
          () async => tsdbRepository.getTvShowsBySearch(query),
          throwsA(isA<GetTvshowsBySearchFailure>()),
        );
      });
    });

    group('getTvShows', () {
      const page = 1;
      test('should return tv shows on success', () async {
        final expected = [
          TvShowModel(
            id: 1,
            name: 'Breaking bad',
            genres: const ['action'],
            imageUrl: 'https://image.url',
            summary: 'summary',
            exhibitionDays: const ['Monday'],
            exhibitionHour: '10:00 PM',
          )
        ];
        when(
          () => apiClient.getTvShowsWithPagination(page),
        ).thenAnswer((_) async => tvShowsResponse);

        final actual = await tsdbRepository.getTvShows(page);

        expect(actual, expected);
      });

      test('throws when getTvShowsBySearch fails', () async {
        when(
          () => apiClient.getTvShowsWithPagination(page),
        ).thenThrow(Exception());

        expect(
          () async => tsdbRepository.getTvShows(page),
          throwsA(isA<GetTvshowsFailure>()),
        );
      });
    });

    group('getTvShowSeasonsAndEpisodes', () {
      const showId = 1;
      test('should return episodes by season on success', () async {
        final expected = [
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
        when(
          () => apiClient.getAllEpisodesByShowId(showId),
        ).thenAnswer((_) async => episodesResponse);

        final actual = await tsdbRepository.getTvShowSeasonsAndEpisodes(showId);

        expect(actual, expected);
      });

      test('throws when getTvShowsBySearch fails', () async {
        when(
          () => apiClient.getAllEpisodesByShowId(showId),
        ).thenThrow(Exception());

        expect(
          () async => tsdbRepository.getTvShowSeasonsAndEpisodes(showId),
          throwsA(isA<GetTvshowSeasonsFailure>()),
        );
      });
    });
  });
}
