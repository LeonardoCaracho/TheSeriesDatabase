import 'package:flutter_test/flutter_test.dart';
import 'package:the_series_db/search/search.dart';

import '../../helpers/mocks/tv_show_mock.dart';

void main() {
  final empty = <Object?>[];
  group('SearchState', () {
    test('supports value comparisons', () {
      expect(SearchState(), SearchState());
    });

    test('HomeInitial', () {
      expect(
        SearchInitial().props,
        empty,
      );
    });

    test('SearchLoadInProgress', () {
      expect(
        SearchLoadInProgress().props,
        empty,
      );
    });

    test('SearchLoadSuccess', () {
      expect(
        SearchLoadSuccess(
          tvShowsList: [tvShowModelMock],
        ).props,
        [
          [tvShowModelMock],
        ],
      );
    });

    test('SearchLoadFailure', () {
      expect(
        SearchLoadFailure().props,
        empty,
      );
    });
  });
}
