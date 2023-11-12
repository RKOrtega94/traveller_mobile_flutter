import 'package:flutter/material.dart';

class AppCardViewModel {
  final Widget child;
  final double? elevation;
  final double? borderRadius;
  final double? height;
  final double? width;

  const AppCardViewModel({
    required this.child,
    this.elevation,
    this.borderRadius,
    this.height,
    this.width,
  });
}
