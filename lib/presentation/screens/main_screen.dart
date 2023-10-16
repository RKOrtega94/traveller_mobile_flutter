import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/main_layout.dart';
import 'package:traveller_mobile_flutter/presentation/provider/_app_providers.dart';
import 'package:traveller_mobile_flutter/presentation/views/home/home_view.dart';
import 'package:traveller_mobile_flutter/presentation/views/map/map_view.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({
    super.key,
  });

  final List<Widget> _pages = const <Widget>[
    HomeView(),
    MapView(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuIndex = ref.watch(menuIndexProvider);
    return AppMainLayout(
      child: _pages[menuIndex],
    );
  }
}
