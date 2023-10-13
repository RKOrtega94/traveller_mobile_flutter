import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:traveller_mobile_flutter/data/storage/app_storage.dart';

part 'app_dark_mode_provider.g.dart';

@riverpod
class DarkMode extends _$DarkMode {
  @override
  Future<bool> build() async => await getTheme();

  void toggle(bool value) async {
    await setTheme(value);
    state = AsyncValue.data(value);
  }
}
