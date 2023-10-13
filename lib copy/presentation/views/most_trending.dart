import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/place_card.dart';

class MostTrending extends StatelessWidget {
  const MostTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) => const AppPlaceCard(),
    );
  }
}
