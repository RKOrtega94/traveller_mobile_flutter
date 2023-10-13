import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/bottom_navigator.dart';

class AppMainLayout extends StatelessWidget {
  final Widget child;
  const AppMainLayout({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: AppBottomNavigatorBar(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
