import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/main_layout.dart';
import 'package:traveller_mobile_flutter/presentation/provider/app_menu_index_provider.dart';
import 'package:traveller_mobile_flutter/presentation/views/home_view.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({
    super.key,
  });

  final List<Widget> _pages = const <Widget>[
    HomeView(),
    Placeholder(),
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
