import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final double height;
  final List<Widget> children;
  const HorizontalList({
    super.key,
    required this.height,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: children,
      ),
    );
  }
}
