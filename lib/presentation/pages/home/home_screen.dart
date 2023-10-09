import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/main_layout.dart';
import 'package:traveller_mobile_flutter/presentation/views/most_searched.dart';
import 'package:traveller_mobile_flutter/presentation/views/most_trending.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/persistent_header.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/section_widget.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/sliver_appbar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const AppSliverAppbar(),
        ],
        body: Builder(
          builder: (context) => CustomScrollView(
            slivers: [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: const AppPersistentHeader(),
              ),
              const SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSectionContainer(
                      title: "Lo más buscado",
                      child: MostSearched(),
                    ),
                    AppSectionContainer(
                      title: "Tendencias",
                      child: MostTrending(),
                    ),
                    SizedBox(height: 65),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
