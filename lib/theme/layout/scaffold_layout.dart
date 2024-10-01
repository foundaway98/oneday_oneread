import 'package:flutter/material.dart';

class ScaffoldLayout extends StatelessWidget {
  final Widget body;
  final String? title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final bool useAppBar;
  final PreferredSizeWidget? appBar;

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
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: useAppBar
          ? (appBar ??
              AppBar(
                title: title != null ? Text(title!) : null,
                actions: actions,
              ))
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: body,
        ),
      ),
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
    );
  }
}
