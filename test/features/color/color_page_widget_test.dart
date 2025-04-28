import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_recruitment_task/app.dart';
import 'package:solid_software_recruitment_task/features/color/color_notifier.dart';
import 'package:solid_software_recruitment_task/features/color/color_page.dart';
import 'package:solid_software_recruitment_task/features/color/color_provider.dart';

void main() {
  testWidgets('displays "Hello there" title', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Hello there'), findsOneWidget);
  });

  testWidgets('color changes when tapping on the page', (
    WidgetTester tester,
  ) async {
    final mockColorProvider = ColorNotifier(Colors.white);
    final initialColor = mockColorProvider.color;

    await tester.pumpWidget(
      MaterialApp(
        home: ColorProvider(
          notifier: mockColorProvider,
          child: const ColorPage(),
        ),
      ),
    );

    final initialContainer = tester.widget<AnimatedContainer>(
      find.byType(AnimatedContainer),
    );

    expect(
      (initialContainer.decoration as BoxDecoration?)?.color,
      initialColor,
    );

    await tester.tap(find.byType(InkWell));

    // Trigger animation
    await tester.pump();

    // Verify new color is different
    expect(mockColorProvider.color, isNot(equals(initialColor)));

    await tester.pump();
    final updatedContainer = tester.widget<AnimatedContainer>(
      find.byType(AnimatedContainer),
    );

    // Verify new color is applied
    expect(
      (updatedContainer.decoration as BoxDecoration?)?.color,
      mockColorProvider.color,
    );
  });
}
