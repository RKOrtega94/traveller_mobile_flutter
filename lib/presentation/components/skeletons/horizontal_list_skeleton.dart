import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/components/skeletons/loading_animated_card.dart';

class AppHorizontalListSkeleton extends StatelessWidget {
  final double height; // main height
  final double itemWidth; // item width
  const AppHorizontalListSkeleton(
      {super.key, this.height = 120, this.itemWidth = 100});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) {
          return const AppLoadingAnimatedCard();
        },
      ),
    );
  }
}
