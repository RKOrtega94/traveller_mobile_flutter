import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/presentation/provider/_app_providers.dart';
import 'package:traveller_mobile_flutter/presentation/screens/main_screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static String get routeName => "/";
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
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
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => const MainScreen(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<bool> darkMode = ref.watch(darkModeProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: FadeTransition(
        opacity: _animation,
        child: Center(
          child: darkMode.value ?? false
              ? Image.asset("assets/images/logo_dark.png")
              : Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}
