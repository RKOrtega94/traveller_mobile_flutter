import 'package:traveller_mobile_flutter/data/models/place.dart';

abstract class IPlaceRepository {
  Future<List<Place>> getPlaces();
}
