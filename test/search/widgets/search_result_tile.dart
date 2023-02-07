import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:the_series_db/search/search.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SearchResultTile', () {
    testWidgets('should renders correctly', (tester) async {
      await mockNetworkImages(() async {
        await tester.pumpApp(
          SearchResultTile(show: tvShowModelMock),
        );

        expect(find.byType(ListTile), findsOneWidget);
        expect(find.byType(SearchResultTile), findsOneWidget);
      });
    });
  });
}
