import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScaffoldLayout extends StatelessWidget {
  final Widget body;
  final String? title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final bool useAppBar;
  final PreferredSizeWidget? appBar;
  final bool useDrawer;

  const ScaffoldLayout({
    super.key,
    required this.body,
    this.title,
    this.actions,
    this.floatingActionButton,
    this.backgroundColor,
    this.padding,
    this.useAppBar = true,
    this.appBar,
    this.useDrawer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: useAppBar
          ? (appBar ??
              AppBar(
                title: title != null
                    ? Text(
                        title!,
                        style: const TextStyle(fontWeight: FontWeight.w900),
                      )
                    : null,
                actions: actions,
                scrolledUnderElevation: 0,
              ))
          : null,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.0.w),
          child: body,
        ),
      ),
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
      drawer: useDrawer ? const DrawerWidget() : null,
    );
  }
}
