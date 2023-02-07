import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/series_details/series_details.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SeriesDetailsPage', () {
    testWidgets('should renders correct page', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpApp(
          SeriesDetailsPage(
            tvShowModel: tvShowModelMock,
          ),
        );

        expect(find.byType(SeriesDetailsView), findsOneWidget);
      });
    });
  });
}
