import 'dart:math';

import 'package:flutter/material.dart';

class BubblesComponents extends StatelessWidget {
  final double size;
  const BubblesComponents({super.key, this.size = 100});

  Color _randomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1.0);
  }

  Widget _buildBubble(context, double size) {
    return Positioned(
      left: Random().nextDouble() * MediaQuery.of(context).size.width,
      top: Random().nextDouble() * MediaQuery.of(context).size.height,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: _randomColor().withOpacity(Random().nextDouble() * 0.5),
          borderRadius: BorderRadius.circular(size),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBubble(context, size);
  }
}
