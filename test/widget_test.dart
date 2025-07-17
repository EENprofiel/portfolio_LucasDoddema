import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lucas_portfolio/main.dart';

void main() {
  testWidgets('Portfolio app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our portfolio shows key content
    expect(find.text('Lucas Doddema'), findsOneWidget);
    expect(find.text('Student Software Engineering'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
    expect(find.text('Experience'), findsOneWidget);
    expect(find.text('Skills'), findsOneWidget);
  });
}