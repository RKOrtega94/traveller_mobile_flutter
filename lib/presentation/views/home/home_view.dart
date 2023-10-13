import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/views/activities/horizontal_activities.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/components/home_appbar.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        const HomeAppbar(),
      ],
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppSection(
                    title: "Actividades",
                    child: ActivitiesHorizontal(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
