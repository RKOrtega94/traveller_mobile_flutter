import 'package:traveller_mobile_flutter/domain/models/activity_model.dart';
import 'package:traveller_mobile_flutter/domain/repositories/activity_repository.dart';

class GetActivitiesUseCase {
  final ActivityRepository _activityRepository;

  GetActivitiesUseCase(this._activityRepository);

  Future<List<ActivityModel>> call() async {
    return await _activityRepository.getActivities();
  }
}
