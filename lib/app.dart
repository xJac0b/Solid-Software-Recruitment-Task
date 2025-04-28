import 'package:flutter/material.dart';
import 'package:solid_software_recruitment_task/features/color/color_notifier.dart';
import 'package:solid_software_recruitment_task/features/color/color_page.dart';
import 'package:solid_software_recruitment_task/features/color/color_provider.dart';

/// This is the main entry point of the application.
class App extends StatelessWidget {
  static const _initialColor = Colors.white;

  /// Creates an instance of the [App] class.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software Recruitment Task',
      home: ColorProvider(
        notifier: ColorNotifier(_initialColor),
        child: const ColorPage(),
      ),
    );
  }
}
