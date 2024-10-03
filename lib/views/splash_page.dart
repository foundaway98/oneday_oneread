import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/layout/scaffold_layout.dart';
import 'package:flutter_application_1/widgets/title_with_logo_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldLayout(
      useAppBar: false,
      useDrawer: false,
      body: Column(
        children: [TitleWithLogoWidget()],
      ),
    );
  }
}
