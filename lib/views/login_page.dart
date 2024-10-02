import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/layout/scaffold_layout.dart';
import 'package:flutter_application_1/views/main_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      useAppBar: false,
      body: Column(
        children: [
          Center(
            child: Text(
              "One Day One Read",
              style: TextStyle(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w900,
                  height: 1.4.sp,
                  letterSpacing: -0.25.sp),
            ),
          ),
          const Expanded(
              child: SizedBox(
            child: Center(
              child: Text("Logo Image"),
            ),
          )),
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
          SizedBox(height: 60.h)
        ],
      ),
    );
  }
}
