import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  const AppCard({super.key, required this.child});

  double getWidth(BuildContext context) {
    // if (card.width != null) return card.width!;

    if (MediaQuery.of(context).size.width == double.infinity) {
      return 150;
    } else {
      return MediaQuery.of(context).size.width;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: getWidth(context),
        height: double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
      ),
    );
  }
}
