import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget? icon;
  final String text;
  final void Function() onPressed;
  const AppButton(
    this.text, {
    super.key,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth == double.infinity
            ? MediaQuery.of(context).size.width * 0.90
            : constraints.maxWidth,
        child: ElevatedButton(
          onPressed: onPressed,
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
                if (icon != null)
                  Row(
                    children: [
                      icon!,
                      const SizedBox(width: 5),
                    ],
                  ),
                Text(
                  text,
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
