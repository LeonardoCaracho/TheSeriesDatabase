import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/series_details/series_details.dart';

import '../../helpers/helpers.dart';

void main() {
  group('EpisodeCard', () {
    testWidgets('should renders correctly', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpApp(
          EpisodeCard(
            episode: episodeMock,
          ),
        );

        expect(find.byType(EpisodeCard), findsOneWidget);
      });
    });

    testWidgets('should show showModalBottomSheet', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpApp(
          EpisodeCard(
            episode: episodeMock,
          ),
        );

        await tester.tap(find.byType(GestureDetector));
        await tester.pumpAndSettle();

        expect(find.byType(EpisodeDetails), findsOneWidget);
      });
    });
  });
}
