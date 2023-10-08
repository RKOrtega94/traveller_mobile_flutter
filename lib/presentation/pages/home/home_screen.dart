import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/main.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Placeholder( ),
    );
  }
}