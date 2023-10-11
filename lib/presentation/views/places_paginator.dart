import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/place_card.dart';

class PlacesPaginator extends StatelessWidget {
  const PlacesPaginator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 150,
      width: double.infinity,
      child: AppPlaceCard(),
    );
  }
}
