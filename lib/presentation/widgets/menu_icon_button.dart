import 'package:flutter/material.dart';

class AppMenuIconButton extends StatefulWidget {
  final Widget icon;
  final bool isSelected;
  final String title;
  final void Function() onTap;
  const AppMenuIconButton(
    this.icon, {
    super.key,
    required this.isSelected,
    required this.title,
    required this.onTap,
  });

  @override
  State<AppMenuIconButton> createState() => _AppMenuIconButtonState();
}

class _AppMenuIconButtonState extends State<AppMenuIconButton>
    with SingleTickerProviderStateMixin {
  /* late final AnimationController _controller;
  late final Animation<double> _animation; */

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Material(
        elevation: widget.isSelected ? 5 : 0,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: widget.isSelected
            ? Theme.of(context).primaryColor
            : Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              SizedBox(
                width: 30,
                child: widget.icon,
              ),
              Visibility(
                visible: widget.isSelected,
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
