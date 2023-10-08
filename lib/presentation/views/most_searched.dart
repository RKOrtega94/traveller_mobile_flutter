import 'package:flutter/material.dart';

import 'package:traveller_mobile_flutter/presentation/widgets/place_card.dart';

class MostSearched extends StatelessWidget {
  const MostSearched({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (contex, index) => const AppPlaceCard(),
      ),
    );
  }
}
