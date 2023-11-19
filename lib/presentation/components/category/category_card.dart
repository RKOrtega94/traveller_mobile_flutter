import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:traveller_mobile_flutter/data/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () => context.push("/category/${category.id}"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            category.image,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            category.name,
          ),
        ],
      ),
    );
  }
}
