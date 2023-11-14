import 'package:traveller_mobile_flutter/domain/repositories/place_repository.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/place.dart';

class GetAllPlacesUseCase {
  final IPlaceRepository _repository;

  GetAllPlacesUseCase(this._repository);

  Future<List<Place>> call() async {
    return await _repository.getPlaces();
  }
}
