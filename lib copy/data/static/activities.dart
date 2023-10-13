import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';

List<Map<String, dynamic>> activities = <Map<String, dynamic>>[
  {
    'id': 1,
    'name': 'Ciclismo',
    'description': 'Paseos en bicicleta por la ciudad, montaña, etc.',
    'icon': null,
    'images': [
      '$BASE_IMAGE_PATH/activities/ciclismo1.jpeg',
      '$BASE_IMAGE_PATH/activities/ciclismo2.jpeg',
      '$BASE_IMAGE_PATH/activities/ciclismo3.jpeg',
      '$BASE_IMAGE_PATH/activities/ciclismo4.jpeg',
    ],
    'is_active': true,
    'created_at': DateTime.now().toString(),
    'updated_at': DateTime.now().toString(),
  },
];
