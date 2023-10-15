import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/views/destinations/card_destination.dart';
import 'package:traveller_mobile_flutter/presentation/views/horizontal_list.dart';

class DestinationsHorizontal extends StatelessWidget {
  const DestinationsHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return const HorizontalList(
      height: 200,
      children: [
        CardDestination(),
        CardDestination(),
        CardDestination(),
        CardDestination(),
      ],
    );
  }
}
