import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/view_models/app_card_view_model.dart';
import 'package:traveller_mobile_flutter/presentation/view_models/category_card_view_model.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/card.dart';

class CategoryCard extends StatelessWidget {
  final CategoryCardViewModel viewModel;
  const CategoryCard({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final Widget child = ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () => viewModel.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            viewModel.category.image,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            viewModel.category.name,
          ),
        ],
      ),
    );

    final AppCardViewModel cardViewModel = AppCardViewModel(
      child: child,
      width: viewModel.width,
      height: viewModel.height,
    );

    return AppCard(
      card: cardViewModel,
    );
  }
}
