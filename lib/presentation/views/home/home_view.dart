import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/banner/banner_list.dart';

import 'package:traveller_mobile_flutter/presentation/components/category/categories_list.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/home_appbar.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/home_persistent_header.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
            const SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppSection(
                    child: CategoriesListComponent(),
                  ),
                  AppSection(
                    child: BannerList(),
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
