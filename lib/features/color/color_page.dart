import 'package:flutter/material.dart';
import 'package:solid_software_recruitment_task/features/color/color_provider.dart';
import 'package:solid_software_recruitment_task/styles/app_typography.dart';

/// Page with a background color that changes on tap and a centered title.
class ColorPage extends StatelessWidget {
  /// The text that will be displayed in the center of the screen.
  static const title = 'Hello there';

  /// Creates an instance of the [ColorPage] class.
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = ColorProvider.of(context);

    return Scaffold(
      body: InkWell(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        onTap: colorProvider.changeColor,
        child: ColoredBox(
          color: colorProvider.color,
          child: const Center(child: Text(title, style: AppTypography.title)),
        ),
      ),
    );
  }
}
