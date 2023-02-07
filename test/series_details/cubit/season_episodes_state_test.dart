import 'package:flutter_test/flutter_test.dart';
import 'package:the_series_db/series_details/series_details.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SeasonEpisodesState', () {
    final empty = <Object?>[];
    test('supports value comparisons', () {
      expect(SeasonEpisodesState(), SeasonEpisodesState());
    });

    test('SeasonEpisodesInitial', () {
      expect(
        SeasonEpisodesInitial().props,
        empty,
      );
    });

    test('SeasonEpisodesLoadInProgress', () {
      expect(
        SeasonEpisodesLoadInProgress().props,
        empty,
      );
    });

    test('SeasonEpisodesLoadSuccess', () {
      expect(
        SeasonEpisodesLoadSuccess(
          seasons: seasonEpisodesMock,
        ).props,
        [
          seasonEpisodesMock,
        ],
      );
    });

    test('SeasonEpisodesLoadFailure', () {
      expect(
        SeasonEpisodesLoadFailure().props,
        empty,
      );
    });
  });
}
