import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/layout/scaffold_layout.dart';
import 'package:flutter_application_1/widgets/date_time_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      useAppBar: true,
      useDrawer: true,
      title: "One Day One Read",
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 255.h - 56,
              child: Column(
                children: [
                  SizedBox(height: 60.h),
                  Text(
                    "제목은 한 줄에 몇 자가 적당한지 테\n이 정도가 적당한 것 같습니다. 진행",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 24.sp),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(45)),
                color: Colors.amber,
              ),
              width: 205.h,
              height: 205.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const DateTimeWidget(),
                  SizedBox(height: 40.h),
                  const Text(
                    "Chanzoo",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 40.h),
                  const Text(
                    "D+1",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
                onPressed: () {
                  context.push("/article");
                },
                child: const Text("Start Read")),
            SizedBox(height: 120.h)
          ],
        ),
      ),
    );
  }
}
