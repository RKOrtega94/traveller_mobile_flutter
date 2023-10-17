import 'package:dio/dio.dart';
import 'package:traveller_mobile_flutter/data/api/api.dart';

class DestinationRemoteDataSource {
  final _api = Api();

  Future<List<Map<String, dynamic>>> getDestinations({
    String? search,
    String? activity,
    String? category,
  }) async {
    try {
      final response = await _api.get(path: '/destinations', queryParameters: {
        'search': search,
        'activity': activity,
        'category': category,
      });
      return List<Map<String, dynamic>>.from(response['data']);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? e.message;
    } catch (e) {
      rethrow;
    }
  }
}
