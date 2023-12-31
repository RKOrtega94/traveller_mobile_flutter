import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/detail_layout.dart';

class DetailScreen extends StatelessWidget {
  final Widget header;
  final Widget child;
  const DetailScreen({
    super.key,
    required this.header,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AppDetailLayout(
      header: header,
      child: child,
    );
  }
}
