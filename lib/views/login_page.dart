import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/layout/scaffold_layout.dart';
import 'package:flutter_application_1/widgets/title_with_logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      useAppBar: false,
      body: Column(
        children: [
          const TitleWithLogoWidget(),
          SizedBox(
            height: 80.h,
          ),
          ElevatedButton(
              onPressed: () {
                context.go('/main');
              },
              child: const Text("Google Login")),
          ElevatedButton(onPressed: () {}, child: const Text("Naver Login")),
          ElevatedButton(onPressed: () {}, child: const Text("Apple Login")),
          SizedBox(height: 40.h)
        ],
      ),
    );
  }
}
