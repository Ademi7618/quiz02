// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quiz02/main.dart';

void main() {
  testWidgets('App loads Cortina login page', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const CortinaApp());

    // Verify that the login page title is displayed.
    expect(find.text('Log In'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
  });
}
