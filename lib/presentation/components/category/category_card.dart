import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/view_models/app_card_view_model.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/card.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppCard(
      card: AppCardViewModel(
        width: 120,
        height: 120 / 2.5,
        child: Placeholder(),
      ),
    );
  }
}
