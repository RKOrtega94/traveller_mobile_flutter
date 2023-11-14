import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:traveller_mobile_flutter/presentation/provider/app_dark_mode_provider.dart';

class AppLoadingAnimatedCard extends ConsumerWidget {
  final double height; // main height
  final double itemWidth; // item width
  const AppLoadingAnimatedCard(
      {super.key, this.height = 120, this.itemWidth = 100});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    final highlightColor = darkMode.value ?? false
        ? Colors.grey[900]!.withOpacity(0.5)
        : Colors.grey[300]!.withOpacity(0.5);
    return SizedBox(
      width: itemWidth,
      height: height,
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).cardColor,
        highlightColor: highlightColor,
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
