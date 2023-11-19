import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/page_layout.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPageLayout(
        child: Center(
      child: Text('Category Screen'),
    ));
  }
}
