import 'package:flutter/material.dart';

/// This class defines the typography styles used in the application.
abstract class AppTypography {
  /// The text style for the title.
  static const TextStyle title = TextStyle(
    fontSize: 24,
    color: Colors.white,
    shadows: [Shadow(offset: Offset(1, 1), blurRadius: 5)],
  );
}
