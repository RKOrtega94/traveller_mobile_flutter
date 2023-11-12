import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/core/theme.dart';
import 'package:traveller_mobile_flutter/infraestructure/source/data_base.dart';
import 'package:traveller_mobile_flutter/presentation/provider/_app_providers.dart';
import 'package:traveller_mobile_flutter/presentation/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDatabase();

  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return MaterialApp(
      title: 'Travellers',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: darkMode.value ?? false ? ThemeMode.dark : ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
