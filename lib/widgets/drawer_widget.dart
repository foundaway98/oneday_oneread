import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(bottom: 24.0.h),
        child: Column(
          children: [
            const ListTile(
              title: Text(""),
            ),
            ListTile(
              title: const Text("My Page"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("History"),
              onTap: () {
                Navigator.pop(context);
                context.push('/history');
              },
            ),
            const Expanded(child: SizedBox()),
            ListTile(
              title: const Text(
                "Log out",
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Sign out"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
