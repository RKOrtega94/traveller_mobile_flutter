import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dark_mode_provider.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggle() {
    state = !state;
  }
}
