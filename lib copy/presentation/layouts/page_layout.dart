import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget>? actions;
  const PageLayout({
    super.key,
    required this.title,
    required this.child,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: actions,
      ),
      body: SafeArea(
        child: child,
      ),
    );
  }
}
