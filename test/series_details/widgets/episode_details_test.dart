import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/series_details/series_details.dart';

import '../../helpers/helpers.dart';

void main() {
  group('EpisodeDetails', () {
    testWidgets('should renders correctly', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpApp(
          EpisodeDetails(
            episode: episodeMock,
          ),
        );

        expect(find.byType(EpisodeDetails), findsOneWidget);
      });
    });
  });
}
