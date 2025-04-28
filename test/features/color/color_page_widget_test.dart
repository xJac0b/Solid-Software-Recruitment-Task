import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_recruitment_task/app.dart';

void main() {
  testWidgets('displays "Hello there" title', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(const App());

    // Assert
    expect(find.text('Hello there'), findsOneWidget);
  });

  testWidgets('changes background color when tapping', (
    WidgetTester tester,
  ) async {
    // Arrange
    await tester.pumpWidget(const App());

    // Get the initial background color
    final coloredBoxFinder = find.byType(ColoredBox);
    final ColoredBox coloredBoxBefore = tester.widget<ColoredBox>(
      coloredBoxFinder,
    );
    final Color colorBefore = coloredBoxBefore.color;

    // Act
    await tester.tap(find.byType(InkWell));
    await tester.pump();

    // Get the background color after tap
    final ColoredBox coloredBoxAfter = tester.widget<ColoredBox>(
      coloredBoxFinder,
    );
    final Color colorAfter = coloredBoxAfter.color;

    // Assert
    expect(colorBefore, isNot(equals(colorAfter)));
  });
}
