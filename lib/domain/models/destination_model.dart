import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:traveller_mobile_flutter/domain/models/activity_model.dart';

part 'destination_model.freezed.dart';
part 'destination_model.g.dart';

@freezed
class DestinationModel with _$DestinationModel {
  const factory DestinationModel({
    int? id,
    required String name,
    required String description,
    required List<String> images,
    List<ActivityModel>? activities,
  }) = _DestinationModel;

  factory DestinationModel.fromJson(Map<String, dynamic> json) =>
      _$DestinationModelFromJson(json);
}
