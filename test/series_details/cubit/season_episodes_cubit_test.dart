import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_series_db/series_details/series_details.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SeasonEpisodesCubit', () {
    late TsdbRepository repository;
    late SeasonEpisodesCubit bloc;

    setUp(() {
      repository = MockTsdbRepository();
      bloc = SeasonEpisodesCubit(repository: repository);
    });

    group('fetchTvShowSeasons', () {
      const idShow = 1;

      blocTest<SeasonEpisodesCubit, SeasonEpisodesState>(
        'should emit [SeasonEpisodesLoadInProgress, SeasonEpisodesLoadSuccess] when success',
        build: () {
          when(() => repository.getTvShowSeasonsAndEpisodes(idShow)).thenAnswer(
            (_) async => seasonEpisodesMock,
          );

          return bloc;
        },
        act: (bloc) => bloc.fetchTvShowSeasons(idShow),
        expect: () => <SeasonEpisodesState>[
          SeasonEpisodesLoadInProgress(),
          SeasonEpisodesLoadSuccess(
            seasons: seasonEpisodesMock,
          ),
        ],
      );

      blocTest<SeasonEpisodesCubit, SeasonEpisodesState>(
        'should emit [SeasonEpisodesLoadInProgress, SeasonEpisodesFailure] when failure',
        build: () {
          when(
            () => repository.getTvShowSeasonsAndEpisodes(idShow),
          ).thenThrow(Exception());

          return bloc;
        },
        act: (bloc) => bloc.fetchTvShowSeasons(idShow),
        expect: () => <SeasonEpisodesState>[
          SeasonEpisodesLoadInProgress(),
          SeasonEpisodesLoadFailure(),
        ],
      );
    });
  });
}
