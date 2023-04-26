// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:seminaire/main.dart';
import 'package:seminaire/shared/menu_drawer.dart';

void main() {
  testWidgets('Check Drawer content', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Drawer());

    // Verify that our counter starts at 0.
    //expect(find.text('A propos'), findsOneWidget);
    //expect(find.text('Version'), findsOneWidget);
  });
}
