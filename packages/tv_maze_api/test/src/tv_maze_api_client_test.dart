import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:tv_maze_api/tv_maze_api.dart';

import '../mocks/mocks.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('TvMazeApiClient', () {
    late http.Client httpClient;
    late TvMazeApiClient tvMazeApiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      tvMazeApiClient = TvMazeApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(TvMazeApiClient(), isNotNull);
      });
    });

    group('getAllEpisodesByShowId', () {
      const query = 1;

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await tvMazeApiClient.getAllEpisodesByShowId(query);
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'api.tvmaze.com',
              '/shows/$query/episodes',
            ),
          ),
        ).called(1);
      });

      test('throws EpisodesRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => tvMazeApiClient.getAllEpisodesByShowId(query),
          throwsA(isA<EpisodesRequestFailure>()),
        );
      });

      test('returns Episodes on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(episodeListJson);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final actual = await tvMazeApiClient.getAllEpisodesByShowId(query);

        expect(
          actual,
          isA<List<EpisodesModel>>(),
        );
      });
    });

    group('getEpisodeDetailsById', () {
      const query = 1;

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await tvMazeApiClient.getEpisodeDetailsById(query);
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'api.tvmaze.com',
              '/episodes/$query',
            ),
          ),
        ).called(1);
      });

      test('throws EpisodeDetailsRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => tvMazeApiClient.getEpisodeDetailsById(query),
          throwsA(isA<EpisodeDetailsRequestFailure>()),
        );
      });

      test('returns Episode details on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(episodeDetailsJson);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final actual = await tvMazeApiClient.getEpisodeDetailsById(query);

        expect(
          actual,
          isA<EpisodesModel>(),
        );
      });
    });

    group('getTvShowsWithPagination', () {
      const query = 1;

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await tvMazeApiClient.getTvShowsWithPagination(query);
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'api.tvmaze.com',
              '/shows',
              {'page': '$query'},
            ),
          ),
        ).called(1);
      });

      test('throws TvShowsRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => tvMazeApiClient.getTvShowsWithPagination(query),
          throwsA(isA<TvShowsRequestFailure>()),
        );
      });

      test('returns Tv Shows on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(tvShowsJson);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final actual = await tvMazeApiClient.getTvShowsWithPagination(query);

        expect(
          actual,
          isA<List<TvShowModel>>(),
        );
      });
    });

    group('getTvShowsBySearch', () {
      const query = 'q';

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await tvMazeApiClient.getTvShowsBySearch(query);
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'api.tvmaze.com',
              '/search/shows',
              {'q': query},
            ),
          ),
        ).called(1);
      });

      test('throws TvShowsRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => tvMazeApiClient.getTvShowsBySearch(query),
          throwsA(isA<TvShowsRequestFailure>()),
        );
      });

      test('returns Tv Shows on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(tvShowsJson);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final actual = await tvMazeApiClient.getTvShowsBySearch(query);

        expect(
          actual,
          isA<List<TvShowModel>>(),
        );
      });
    });

    group('getTvShowsDetailsById', () {
      const query = 1;

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('{}');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        try {
          await tvMazeApiClient.getTvShowsDetailsById(query);
        } catch (_) {}

        verify(
          () => httpClient.get(
            Uri.https(
              'api.tvmaze.com',
              '/shows/$query',
            ),
          ),
        ).called(1);
      });

      test('throws TvShowsRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => tvMazeApiClient.getTvShowsDetailsById(query),
          throwsA(isA<TvShowDetailsRequestFailure>()),
        );
      });

      test('returns Tv Show details on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(tvShowJson);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);

        final actual = await tvMazeApiClient.getTvShowsDetailsById(query);

        expect(
          actual,
          isA<TvShowModel>(),
        );
      });
    });
  });
}
