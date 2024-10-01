import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
              child: Center(
                child: Text(
                  "One Day One Read",
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w900,
                      height: 1.4.sp,
                      letterSpacing: -0.25.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
