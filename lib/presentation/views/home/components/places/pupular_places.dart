import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/data/models/place.dart';
import 'package:traveller_mobile_flutter/presentation/components/place/place_card_component.dart';
import 'package:traveller_mobile_flutter/presentation/components/skeletons/horizontal_list_skeleton.dart';
import 'package:traveller_mobile_flutter/presentation/provider/_app_providers.dart';

class PopularPlaces extends ConsumerWidget {
  const PopularPlaces({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Place>> places = ref.watch(placesProvider);

    if (places is AsyncLoading) {
      return const AppHorizontalListSkeleton(
        itemWidth: 250,
        height: 250 / 1.8,
      );
    }

    return Visibility(
      visible: places.hasValue && places.value!.isNotEmpty,
      replacement: const Center(
        child: Text("Sin datos para mostrar"),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 250 / 1.8,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: places.value!
                .map(
                  (place) => PlaceCard(
                    place: place,
                    width: 250,
                  ),
                )
                .toList()),
      ),
    );
  }
}
