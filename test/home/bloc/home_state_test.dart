import 'package:flutter_test/flutter_test.dart';
import 'package:the_series_db/home/home.dart';

import '../../helpers/mocks/tv_show_mock.dart';

void main() {
  group('HomeState', () {
    test('supports value comparisons', () {
      expect(HomeState(), HomeState());
    });

    test('HomeInitial', () {
      expect(
        HomeInitial().props,
        [],
      );
    });

    test('HomeLoadInProgress', () {
      expect(
        HomeLoadInProgress().props,
        [],
      );
    });

    test('HomeLoadSuccess', () {
      expect(
        HomeLoadSuccess(
          tvShowsList: [tvShowModelMock],
          currentPage: 1,
        ).props,
        [
          [tvShowModelMock],
          1
        ],
      );
    });

    test('HomeLoadFailure', () {
      expect(
        HomeLoadFailure().props,
        [],
      );
    });
  });
}
