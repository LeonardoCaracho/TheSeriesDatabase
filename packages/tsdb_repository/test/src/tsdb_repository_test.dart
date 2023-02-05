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
        ).thenAnswer((_) async => tvShowsResponse);

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
  });
}
