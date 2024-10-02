import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/layout/scaffold_layout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late String date;

  @override
  void initState() {
    date = DateTime.now().toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      useAppBar: true,
      useDrawer: true,
      title: "One Day One Read",
      body: Column(
        children: [
          SizedBox(height: 120.h),
          Text(date),
          SizedBox(height: 40.h),
          const Text("Chanzoo"),
          SizedBox(height: 40.h),
          const Text("D+1"),
          const Expanded(child: SizedBox()),
          ElevatedButton(onPressed: () {}, child: const Text("Start Read")),
          SizedBox(height: 120.h)
        ],
      ),
    );
  }
}
