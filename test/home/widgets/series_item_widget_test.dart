import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/home/home.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SeriesItemWidget', () {
    testWidgets('should renders correctly', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpApp(
          SeriesItemWidget(tvShow: tvShowModelMock),
        );

        expect(find.byType(SeriesItemWidget), findsOneWidget);
        expect(find.byType(GestureDetector), findsOneWidget);
      });
    });
  });
}
