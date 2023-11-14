import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (context, index) {
        return const Text("data");
      },
    );
  }
}
