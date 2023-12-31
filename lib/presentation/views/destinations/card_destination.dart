import 'package:flutter/material.dart';

class CardDestination extends StatelessWidget {
  const CardDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxWidth == double.infinity
            ? constraints.maxHeight * 1.5
            : constraints.maxWidth,
        child: const Placeholder(),
      ),
    );
  }
}
