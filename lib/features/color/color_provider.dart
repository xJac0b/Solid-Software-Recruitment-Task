import 'package:flutter/material.dart';
import 'package:solid_software_recruitment_task/features/color/color_notifier.dart';

/// This class provides a way to access the [ColorNotifier] from the widget tree
class ColorProvider extends InheritedNotifier<ColorNotifier> {
  /// Creates an instance of the [ColorProvider] class.
  const ColorProvider({
    required ColorNotifier super.notifier,
    required super.child,
    super.key,
  });

  /// This method allows you to access the [ColorNotifier] from the widget tree.
  static ColorNotifier of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<ColorProvider>();
    if (provider == null) {
      throw FlutterError('No ColorProvider found in context');
    }

    final notifier = provider.notifier;
    if (notifier == null) {
      throw FlutterError("ColorProvider's notifier is null");
    }

    return notifier;
  }
}
