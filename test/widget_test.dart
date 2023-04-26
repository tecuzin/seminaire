// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:seminaire/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const GlobeApp());

    // Verify that our counter starts at 0.
    expect(find.text('Séminaire production 2023'), findsOneWidget);
    expect(find.text('Bienvenue !!'), findsOneWidget);

    // Tap the 'agenda icon
    await tester.tap(find.byIcon(Icons.calendar_month));
    await tester.pump();
    expect(find.text('Programme du séminaire'), findsOneWidget);
    expect(find.text('08h15-9h00'), findsOneWidget);
  });
}
