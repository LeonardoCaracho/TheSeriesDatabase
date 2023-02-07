import 'package:flutter_test/flutter_test.dart';
import 'package:the_series_db/search/search.dart';

import '../../helpers/helpers.dart';

void main() {
  group('SearchPage', () {
    testWidgets('should renders correct page', (tester) async {
      await tester.pumpApp(
        const SearchPage(),
      );

      expect(find.byType(SearchView), findsOneWidget);
    });
  });
}
