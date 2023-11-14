import 'package:traveller_mobile_flutter/domain/data_source/place_data_source.dart';
import 'package:traveller_mobile_flutter/domain/repositories/place_repository.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/place.dart';

class PlaceRepository extends IPlaceRepository {
  final IPlaceDataSource dataSource;

  PlaceRepository(this.dataSource);
  @override
  Future<List<Place>> getPlaces() {
    try {
      return dataSource.getPlaces().then(
            (value) => value
                .map(
                  (e) => Place.fromJson(e),
                )
                .toList(),
          );
    } catch (e) {
      rethrow;
    }
  }
}
