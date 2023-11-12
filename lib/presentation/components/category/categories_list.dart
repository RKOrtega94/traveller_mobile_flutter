import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/components/category/category_card.dart';

class CategoriesListComponent extends StatelessWidget {
  const CategoriesListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120 / 2.5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: const [
          CategoryCard(),
        ],
      ),
    );
  }
}
