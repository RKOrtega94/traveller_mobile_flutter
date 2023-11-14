import 'package:traveller_mobile_flutter/domain/data_source/place_data_source.dart';
import 'package:traveller_mobile_flutter/infrastructure/static/places.dart';

class PlaceLocalDataSource extends IPlaceDataSource {
  List<Map<String, dynamic>> placeData = places;
  @override
  Future<List<Map<String, dynamic>>> getPlaces() async {
    await Future.delayed(const Duration(seconds: 2));

    return Future.value(placeData);
  }
}
