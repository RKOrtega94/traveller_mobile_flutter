import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/core/theme.dart';
import 'package:traveller_mobile_flutter/presentation/provider/app_dark_mode_provider.dart';
import 'package:traveller_mobile_flutter/presentation/router/_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return MaterialApp.router(
      title: 'Travellers',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: darkMode.value ?? false ? ThemeMode.dark : ThemeMode.light,
      routerConfig: router,
    );
  }
}
