import 'package:flutter_test/flutter_test.dart';
import 'package:the_series_db/search/search.dart';

void main() {
  group('SearchEvent', () {
    test('supports value comparisons', () {
      expect(SearchEvent(), SearchEvent());
    });

    test('SearchFetched', () {
      expect(
        SearchFetched(query: 'query').props,
        ['query'],
      );
    });

    test('SearchCleaned', () {
      expect(
        SearchCleaned().props,
        <Object?>[],
      );
    });
  });
}
