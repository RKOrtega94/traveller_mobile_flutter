import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/main.dart';
import 'package:traveller_mobile_flutter/presentation/views/most_searched.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/section_widget.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/sliver_appbar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      child: CustomScrollView(
        slivers: [
          AppSliverAppbar(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSectionContainer(
                  title: "Lo más buscado",
                  child: MostSearched(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
