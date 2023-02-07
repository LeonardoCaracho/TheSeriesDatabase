import 'package:flutter_test/flutter_test.dart';
import 'package:the_series_db/home/home.dart';

import '../../helpers/helpers.dart';

void main() {
  group('HomePage', () {
    testWidgets('should renders correct page', (tester) async {
      await tester.pumpApp(
        const HomePage(),
      );

      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
