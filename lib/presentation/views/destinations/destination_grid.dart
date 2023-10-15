import 'package:flutter/cupertino.dart';
import 'package:traveller_mobile_flutter/presentation/views/destinations/card_destination.dart';

class DestinationGrid extends StatelessWidget {
  const DestinationGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GridView.builder(
            itemCount: 10,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => const CardDestination(),
          )
        ],
      ),
    );
  }
}
