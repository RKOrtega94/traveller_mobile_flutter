import 'package:traveller_mobile_flutter/domain/models/activity_model.dart';

abstract class ActivityRepository {
  Future<List<ActivityModel>> getActivities();
}
