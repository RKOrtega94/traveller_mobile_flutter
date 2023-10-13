import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/main_layout.dart';
import 'package:traveller_mobile_flutter/presentation/pages/explore/explore_screen.dart';
import 'package:traveller_mobile_flutter/presentation/pages/favorite/favorite_screen.dart';
import 'package:traveller_mobile_flutter/presentation/pages/home/home_screen.dart';
import 'package:traveller_mobile_flutter/presentation/pages/routes/routes_screen.dart';
import 'package:traveller_mobile_flutter/presentation/providers/app_page_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  final List<Widget> _pages = const <Widget>[
    HomeScreen(),
    ExploreScreen(),
    RoutesScreen(),
    FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(selectedPage);
    return MainLayout(
      child: _pages[currentPage],
    );
  }
}
