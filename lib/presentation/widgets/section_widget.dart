import 'package:flutter/material.dart';

class AppSectionContainer extends StatelessWidget {
  final String title;
  final Widget child;
  const AppSectionContainer(
      {super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "$title",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
