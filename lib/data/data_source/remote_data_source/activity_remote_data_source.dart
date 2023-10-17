import 'package:traveller_mobile_flutter/data/api/api.dart';

class ActivityRemoteDataSource {
  final _api = Api();

  Future<List<Map<String, dynamic>>> getActivities() async {
    final response = await _api.get(path: '/activities');
    return List<Map<String, dynamic>>.from(response['data']);
  }
}
