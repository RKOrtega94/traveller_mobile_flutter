import 'package:traveller_mobile_flutter/domain/models/activity_model.dart';
import 'package:traveller_mobile_flutter/domain/repositories/activity_repository.dart';
import 'package:traveller_mobile_flutter/infraestructure/data_source/remote_data_source/activity_remote_data_source.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final _remoteDataSource = ActivityRemoteDataSource();
  @override
  Future<List<ActivityModel>> getActivities() async {
    final activities = await _remoteDataSource.getActivities();
    return activities
        .map((activity) => ActivityModel.fromJson(activity))
        .toList();
  }
}
