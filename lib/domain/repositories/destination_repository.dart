import 'package:traveller_mobile_flutter/domain/models/destination_model.dart';

/// Abstract class for DestinationRepository
///
/// This class is used to define the methods that will be used in the DestinationRepositoryImpl class
abstract class DestinationRepository {
  /// Get all destinations
  Future<List<DestinationModel>> getDestinations({
    String? search,
    String? activity,
    String? category,
  });
}
