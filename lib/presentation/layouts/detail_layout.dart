import 'package:flutter/material.dart';

class AppDetailLayout extends StatelessWidget {
  final Widget header;
  final Widget child;
  const AppDetailLayout({
    super.key,
    required this.header,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBody: true,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          header,
          SliverToBoxAdapter(
            child: child,
          ),
        ],
      ),
    );
  }
}
