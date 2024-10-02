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
              ))
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Center(child: body),
        ),
      ),
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
      drawer: useDrawer
          ? Drawer(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text("mypage"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("writers"),
                    onTap: () {},
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
