import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/category.dart';
import 'package:traveller_mobile_flutter/presentation/components/category/category_card.dart';
import 'package:traveller_mobile_flutter/presentation/components/skeletons/horizontal_list_skeleton.dart';
import 'package:traveller_mobile_flutter/presentation/provider/category_provider.dart';
import 'package:traveller_mobile_flutter/presentation/view_models/category_card_view_model.dart';

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

    if (categories is AsyncError) {
      return const Center(
        child: Text("Error"),
      );
    }

    final List<Category> categoriesList = categories.value ?? [];

    final CategoryCardViewModel viewModel = CategoryCardViewModel(
      category: categoriesList.first,
      onTap: () {},
    );

    return Visibility(
      visible: categoriesList.isNotEmpty,
      replacement: const Center(
        child: Text("No hay categorias"),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 120 / 2.5,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: categoriesList
              .map(
                (category) => CategoryCard(
                  viewModel: viewModel,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
