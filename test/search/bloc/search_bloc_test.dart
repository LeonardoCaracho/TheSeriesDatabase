import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_series_db/search/search.dart';
import 'package:tsdb_repository/tsdb_repository.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SearchBloc', () {
    late TsdbRepository repository;
    late SearchBloc bloc;

    setUp(() {
      repository = MockTsdbRepository();
      bloc = SearchBloc(tsdbRepository: repository);
    });

    group('SearchFetched', () {
      const query = 'query';

      blocTest<SearchBloc, SearchState>(
        'should emit [SearchLoadInProgress, SearchLoadSuccess] when success',
        build: () {
          when(() => repository.getTvShowsBySearch(query)).thenAnswer(
            (_) async => [tvShowModelMock],
          );

          return bloc;
        },
        act: (bloc) => bloc.add(SearchFetched(query: query)),
        expect: () => <SearchState>[
          SearchLoadInProgress(),
          SearchLoadSuccess(tvShowsList: [tvShowModelMock]),
        ],
      );

      blocTest<SearchBloc, SearchState>(
        'should emit [SearchLoadInProgress, SearchLoadFailure] when failure',
        build: () {
          when(() => repository.getTvShowsBySearch(query)).thenThrow(
            Exception(),
          );

          return bloc;
        },
        act: (bloc) => bloc.add(SearchFetched(query: query)),
        expect: () => <SearchState>[
          SearchLoadInProgress(),
          SearchLoadFailure(),
        ],
      );
    });
  });
}
