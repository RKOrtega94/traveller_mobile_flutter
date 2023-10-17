import 'package:traveller_mobile_flutter/data/data_source/remote_data_source/destination_remote_data_source.dart';
import 'package:traveller_mobile_flutter/domain/models/destination_model.dart';
import 'package:traveller_mobile_flutter/domain/repositories/destination_repository.dart';

class DestinationRepositoryImpl implements DestinationRepository {
  final _remoteDataSource = DestinationRemoteDataSource();
  @override
  Future<List<DestinationModel>> getDestinations({
    String? search,
    String? activity,
    String? category,
  }) async {
    final destinations = await _remoteDataSource.getDestinations(
      search: search,
      activity: activity,
      category: category,
    );
    return destinations
        .map((destination) => DestinationModel.fromJson(destination))
        .toList();
  }
}
