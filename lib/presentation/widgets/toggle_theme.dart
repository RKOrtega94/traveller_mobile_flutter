import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';
import 'package:traveller_mobile_flutter/presentation/provider/app_dark_mode_provider.dart';

class AppToggleTheme extends ConsumerWidget {
  const AppToggleTheme({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return Row(
      children: [
        Image.asset(
          "$baseIconPath/sunny.png",
          height: 35,
        ),
        Switch(
          value: darkMode.value ?? false,
          onChanged: (val) => ref.read(darkModeProvider.notifier).toggle(val),
        ),
        Image.asset(
          "$baseIconPath/moon.png",
          height: 35,
        ),
      ],
    );
  }
}
