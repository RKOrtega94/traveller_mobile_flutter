import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:traveller_mobile_flutter/data/models/place.dart';
import 'package:traveller_mobile_flutter/presentation/components/place/place_card_component.dart';
import 'package:traveller_mobile_flutter/presentation/provider/_app_providers.dart';

class PlacesList extends ConsumerWidget {
  const PlacesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Place>> places = ref.watch(placesProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        itemCount: places.value!.length,
        itemBuilder: (context, index) {
          return Material(
            elevation: 2,
            child: SizedBox(
              height: 250,
              child: PlaceCard(
                place: places.value![index],
              ),
            ),
          );
        },
      ),
    );
  }
}
