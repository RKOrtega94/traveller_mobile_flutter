import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/data/models/category.dart';
import 'package:traveller_mobile_flutter/presentation/components/category/category_card.dart';
import 'package:traveller_mobile_flutter/presentation/components/skeletons/horizontal_list_skeleton.dart';
import 'package:traveller_mobile_flutter/presentation/provider/category_provider.dart';

class CategoriesListComponent extends ConsumerWidget {
  const CategoriesListComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Category>> categories = ref.watch(categoriesProvider);

    if (categories is AsyncLoading) {
      return const AppHorizontalListSkeleton(
        height: 120 / 2.5,
        itemWidth: 120,
      );
    }

    final List<Category> categoriesList = categories.value ?? [];

    return Visibility(
      visible: categoriesList.isNotEmpty,
      replacement: const Center(
        child: Text("No hay categorías"),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 120 / 2.5,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: categoriesList
              .map(
                (category) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: CategoryCard(
                    key: ValueKey(category.id),
                    category: category,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
