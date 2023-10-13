import 'package:flutter/material.dart';

import 'package:traveller_mobile_flutter/presentation/views/activity_card.dart';

class ActivitiesList extends StatelessWidget {
  const ActivitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ActivityCard(),
      ),
    );
  }
}
