import 'package:dio/dio.dart';
import 'package:traveller_mobile_flutter/infraestructure/source/api.dart';

class ActivityRemoteDataSource {
  final _api = Api();

  Future<List<Map<String, dynamic>>> getActivities() async {
    try {
      final response = await _api.get(path: '/activities');
      return List<Map<String, dynamic>>.from(response['data']);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? e.message;
    } catch (e) {
      rethrow;
    }
  }
}
