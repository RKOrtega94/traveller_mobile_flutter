import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traveller_mobile_flutter/data/storage.dart';

// ThemeMode using secured storage
class ThemeNotifier extends StateNotifier<ThemeMode> {
  final AppStorage _storage = AppStorage();
  // set initial theme mode
  ThemeNotifier() : super(ThemeMode.system) {
    _init();
  }

  Future<void> _init() async {
    // get theme mode from secured storage
    final theme = await _storage.getThemeMode();

    if (theme != null) {
      // set theme mode
      state = ThemeMode.values[int.parse(theme)];
    }
  }

  void toggleTheme() {
    // toggle theme mode
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    // set theme mode in secured storage
    _storage.setThemeMode(state.index.toString());
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
  (ref) => ThemeNotifier(),
);
