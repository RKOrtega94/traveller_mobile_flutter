import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_position_provider.g.dart';

@riverpod
Stream<Position?> position(PositionRef ref) async* {
  final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

  if (!serviceEnabled) {
    throw Exception('Location services are disabled.');
  }

  final LocationPermission permission = await Geolocator.requestPermission();

  if (permission == LocationPermission.deniedForever) {
    yield null;
  }

  yield* Geolocator.getPositionStream();
}
