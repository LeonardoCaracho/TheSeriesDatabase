import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_series_db/home/home.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

import '../../helpers/helpers.dart';

void main() {
  group('HomeBloc', () {
    late TsdbRepository repository;
    late HomeBloc bloc;

    setUp(() {
      repository = MockTsdbRepository();
      bloc = HomeBloc(repository: repository);
    });

    group('HomeStarted', () {
      const page = 1;

      blocTest<HomeBloc, HomeState>(
        'should emit [HomeLoadInProgress, HomeLoadSuccess] when success',
        build: () {
          when(() => repository.getTvShows(page)).thenAnswer(
            (_) async => [tvShowModelMock],
          );

          return bloc;
        },
        act: (bloc) => bloc.add(HomeStarted()),
        expect: () => <HomeState>[
          HomeLoadInProgress(),
          HomeLoadSuccess(tvShowsList: [tvShowModelMock]),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'should emit [HomeLoadInProgress, HomeLoadFailure] when failure',
        build: () {
          when(() => repository.getTvShows(page)).thenThrow(Exception());

          return bloc;
        },
        act: (bloc) => bloc.add(HomeStarted()),
        expect: () => <HomeState>[
          HomeLoadInProgress(),
          HomeLoadFailure(),
        ],
      );
    });

    group('HomeFetched', () {
      const page = 1;

      blocTest<HomeBloc, HomeState>(
        'should emit [HomeLoadInProgress, HomeLoadSuccess] when success',
        build: () {
          when(() => repository.getTvShows(page + 1)).thenAnswer(
            (_) async => [tvShowModelMock],
          );

          return bloc;
        },
        act: (bloc) => bloc.add(HomeFetched()),
        seed: () => HomeLoadSuccess(
          tvShowsList: [tvShowModelMock],
        ),
        expect: () => <HomeState>[
          HomeLoadSuccess(
            tvShowsList: [tvShowModelMock, tvShowModelMock],
            currentPage: page + 1,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'should emit [HomeLoadInProgress, HomeLoadFailure] when failure',
        build: () {
          when(() => repository.getTvShows(page + 1)).thenThrow(Exception());

          return bloc;
        },
        seed: () => HomeLoadSuccess(
          tvShowsList: [tvShowModelMock],
        ),
        act: (bloc) => bloc.add(HomeFetched()),
        expect: () => <HomeState>[
          HomeLoadFailure(),
        ],
      );
    });
  });
}
