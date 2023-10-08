import 'package:flutter/material.dart';

import 'package:traveller_mobile_flutter/presentation/widgets/bottom_navigator_bar.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: child,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) => {
          print(index),
        },
      ),
    );
  }
}
