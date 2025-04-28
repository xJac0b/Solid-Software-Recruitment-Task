import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_recruitment_task/features/color/color_notifier.dart';

void main() {
  group('ColorNotifier', () {
    test('should change to a different color', () {
      final notifier = ColorNotifier(Colors.white);
      final initialColor = notifier.color;

      notifier.changeColor();
      final newColor = notifier.color;

      expect(newColor, isNot(equals(initialColor)));
    });
  });
}
