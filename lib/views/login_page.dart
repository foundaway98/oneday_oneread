import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/layout/scaffold_layout.dart';
import 'package:flutter_application_1/views/main_page.dart';
import 'package:flutter_application_1/widgets/title_with_logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            height: 95.h,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MainPage();
                    },
                  ),
                );
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
