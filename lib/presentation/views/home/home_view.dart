import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/banner/banner_list.dart';

import 'package:traveller_mobile_flutter/presentation/components/category/categories_list.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/home_appbar.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/home_persistent_header.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/places/places_list.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/places/pupular_places.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    debugPrint("screenHeight: $screenHeight");
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        const HomeAppbar(),
      ],
      body: Builder(
        builder: (context) => CustomScrollView(
          slivers: [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: const HomePersistentHeader(),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppSection(
                    child: CategoriesListComponent(),
                  ),
                  const AppSection(
                    child: BannerList(),
                  ),
                  const SizedBox(height: 10),
                  const AppSection(
                    title: "Destinos populares en Quito",
                    child: PopularPlaces(),
                  ),
                  const SizedBox(height: 10),
                  AppSection(
                    title: "Más lugares en Quito",
                    child: SizedBox(
                      height: screenHeight,
                      child: const PlacesList(),
                    ),
                  )
                  /* AppSection(
                    child: ActivitiesHorizontal(),
                  ),
                  AppSection(
                    title: "Destinos",
                    child: DestinationsHorizontal(),
                  ),
                  AppSection(
                    title: "Últimos post",
                    child: LastPost(),
                  ),
                  SizedBox(height: 65), */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
