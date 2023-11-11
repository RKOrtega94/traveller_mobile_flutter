import 'package:flutter_secure_storage/flutter_secure_storage.dart';

setTheme(bool value) async {
  const FlutterSecureStorage storage = FlutterSecureStorage();
  await storage.write(key: "isDarkMode", value: value.toString());
}

Future<bool> getTheme() async {
  const FlutterSecureStorage storage = FlutterSecureStorage();
  final String? value = await storage.read(key: "isDarkMode");
  return value == "true";
}
