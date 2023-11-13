import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppLoadingAnimatedCard extends StatelessWidget {
  final double height; // main height
  final double itemWidth; // item width
  const AppLoadingAnimatedCard(
      {super.key, this.height = 120, this.itemWidth = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: itemWidth,
      height: height,
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).cardColor,
        highlightColor: Colors.grey[300]!,
        direction: ShimmerDirection.ltr,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).cardColor,
            ),
          ),
        ),
      ),
    );
  }
}
