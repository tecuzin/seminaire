import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:seminaire/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('Tap on the agenda button, check content is present',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify the counter starts at 0.
      expect(find.textContaining('2023'), findsOneWidget);
      expect(find.textContaining('Bienvenue'), findsOneWidget);

      final Finder fab = find.textContaining('Programme');
      await tester.tap(fab);

      await tester.pumpAndSettle();

      expect(find.textContaining('8h'), findsOneWidget);
    });
  });
}
