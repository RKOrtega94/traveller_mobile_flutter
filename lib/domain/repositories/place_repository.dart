import 'package:traveller_mobile_flutter/infrastructure/models/place.dart';

abstract class IPlaceRepository {
  Future<List<Place>> getPlaces();
}
