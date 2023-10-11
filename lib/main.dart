import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traveller_mobile_flutter/core/app/theme.dart';
import 'package:traveller_mobile_flutter/presentation/notifiers/app_theme_notifier.dart';
import 'package:traveller_mobile_flutter/presentation/pages/splash/splash_screen.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: theme,
      home: const SplashScreen(),
    );
  }
}
