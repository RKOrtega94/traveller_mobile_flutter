import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/routes/app_router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      AutoRouter.of(context).replace(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: FadeTransition(
          opacity: _animation,
          child: Center(
            child: Image.asset("assets/images/logo.png"),
          ),
        ));
  }
}
