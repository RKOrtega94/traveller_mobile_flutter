import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Widget? icon;
  const AppButton({
    super.key,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth == double.infinity
            ? MediaQuery.of(context).size.width * 0.90
            : constraints.maxWidth,
        child: ElevatedButton(
          onPressed: () {},
          child: Container(
            width: constraints.maxWidth == double.infinity
                ? MediaQuery.of(context).size.width * 0.90
                : constraints.maxWidth,
            alignment: icon == null ? Alignment.center : Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: icon == null
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 5),
                ],
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
