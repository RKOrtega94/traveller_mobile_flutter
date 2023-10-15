import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final double? padding;
  final Color? bgColor;
  const AppIconButton({
    super.key,
    required this.icon,
    required this.text,
    this.padding,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: padding != null
            ? MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: padding!),
              )
            : MaterialStateProperty.all(EdgeInsets.zero),
        backgroundColor: MaterialStateProperty.all(
          bgColor ?? Colors.transparent,
        ),
        elevation: MaterialStateProperty.all(bgColor != null ? 2 : 0),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          const SizedBox(width: 2.5),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );
  }
}
