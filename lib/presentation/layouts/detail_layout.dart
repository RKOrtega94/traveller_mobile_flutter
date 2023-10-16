import 'package:flutter/material.dart';

class AppDetailLayout extends StatefulWidget {
  final Widget header;
  final Widget child;
  final bool? initialScroll;
  const AppDetailLayout({
    super.key,
    required this.header,
    required this.child,
    this.initialScroll,
  });

  @override
  State<AppDetailLayout> createState() => _AppDetailLayoutState();
}

class _AppDetailLayoutState extends State<AppDetailLayout> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController(
      initialScrollOffset: 300,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBody: true,
      body: CustomScrollView(
        controller: widget.initialScroll ?? false ? _controller : null,
        physics: const ClampingScrollPhysics(),
        slivers: [
          widget.header,
          SliverToBoxAdapter(
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
