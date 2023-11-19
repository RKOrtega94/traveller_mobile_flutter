import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/page_layout.dart';

class CategoryScreen extends StatelessWidget {
  static String get routeName => "/category";
  final String? id;
  const CategoryScreen({
    super.key,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return const AppPageLayout(
        child: Center(
      child: Text('Category Screen'),
    ));
  }
}
