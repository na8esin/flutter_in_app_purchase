import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';

import '../lib/platform.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows building and interacting
  // with widgets in the test environment.
  testWidgets('Determine the platform', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MyApp());

    // Create the Finders.
    final androidFinder = find.text('android');
    final iosFinder = find.text('ios');

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(androidFinder, findsOneWidget);
    expect(iosFinder, findsOneWidget);
  });
}
