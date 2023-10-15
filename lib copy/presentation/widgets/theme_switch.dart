import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';
import 'package:traveller_mobile_flutter/presentation/notifiers/app_theme_notifier.dart';

/* class ThemeSwitch extends HookConsumerWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset("$BASE_ICON_PATH/sunny.png", width: 30),
          Switch(
              value: theme == ThemeMode.dark ? true : false,
              onChanged: (value) {
                ref.read(themeProvider.notifier).toggleTheme();
              }),
          Image.asset("$BASE_ICON_PATH/moon.png", width: 30),
        ],
      ),
    );
  }
}
 */