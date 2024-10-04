import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWithLogoWidget extends StatelessWidget {
  const TitleWithLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        SizedBox(
          height: 130.h,
          child: Center(
            child: Column(
              children: [
                Text(
                  "One Day",
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w900,
                      height: 1.4.sp,
                      letterSpacing: -0.25.sp),
                ),
                Text(
                  "One Read",
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w900,
                      height: 1.4.sp,
                      letterSpacing: -0.25.sp),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 45.h),
        Container(
          height: 205.h,
          width: 205.h,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(45)),
              color: Colors.amber),
        ),
      ],
    );
  }
}
