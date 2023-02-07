import 'package:flutter_test/flutter_test.dart';
import 'package:the_series_db/home/home.dart';

import '../../helpers/mocks/tv_show_mock.dart';

void main() {
  group('HomeState', () {
    final empty = <Object?>[];
    test('supports value comparisons', () {
      expect(HomeState(), HomeState());
    });

    test('HomeInitial', () {
      expect(
        HomeInitial().props,
        empty,
      );
    });

    test('HomeLoadInProgress', () {
      expect(
        HomeLoadInProgress().props,
        empty,
      );
    });

    test('HomeLoadSuccess', () {
      expect(
        HomeLoadSuccess(
          tvShowsList: [tvShowModelMock],
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
        empty,
      );
    });
  });
}
