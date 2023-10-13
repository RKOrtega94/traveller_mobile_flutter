import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  getThemeMode() async {
    return await storage.read(key: "theme_mode");
  }

  setThemeMode(String themeMode) async {
    await storage.write(key: "theme_mode", value: themeMode);
  }
}
