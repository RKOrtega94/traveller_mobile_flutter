import 'package:flutter/material.dart';

class AppPageLayout extends StatelessWidget {
  final Widget child;
  final List<Widget>? actions;
  const AppPageLayout({
    super.key,
    required this.child,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          "Traveller",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
        actions: actions,
      ),
      body: child,
    );
  }
}
