import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:traveller_mobile_flutter/infrastructure/data_source/local_data_source/place_local_data_source.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/place.dart';
import 'package:traveller_mobile_flutter/infrastructure/repositories/place_repository.dart';
import 'package:traveller_mobile_flutter/infrastructure/use_cases/place/get_all_places_use_case.dart';

part 'place_provider.g.dart';

@riverpod
Future<List<Place>> places(PlacesRef ref) async {
  final GetAllPlacesUseCase getAll = GetAllPlacesUseCase(
    PlaceRepository(
      PlaceLocalDataSource(),
    ),
  );

  return await getAll.call();
}
