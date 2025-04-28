import 'dart:math';

import 'package:flutter/material.dart';

/// This class is a [ValueNotifier] that holds a color value.
class ColorNotifier extends ValueNotifier<Color> {
  /// The alpha value of the color fully visible
  static const _alpha = 255;

  /// The number of colors that can be generated.
  static const _colorsNumber = 256;

  /// The color value of the [ColorNotifier].
  Color get color => value;

  /// Creates an instance of the [ColorNotifier] class.
  ColorNotifier(super.color);

  /// Changes the color to a random color.
  void changeColor() {
    value = generateColor();
  }

  /// Generates a random color.
  Color generateColor() {
    final Random random = Random();

    final red = random.nextInt(_colorsNumber);
    final green = random.nextInt(_colorsNumber);
    final blue = random.nextInt(_colorsNumber);

    return Color.fromARGB(_alpha, red, green, blue);
  }
}
