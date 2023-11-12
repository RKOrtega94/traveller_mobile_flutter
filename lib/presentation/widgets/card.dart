import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';
import 'package:traveller_mobile_flutter/presentation/view_models/app_card_view_model.dart';

class AppCard extends StatelessWidget {
  final AppCardViewModel card;
  const AppCard({super.key, required this.card});

  double getWidth(BuildContext context) {
    if (card.width != null) return card.width!;

    if (MediaQuery.of(context).size.width == double.infinity) {
      return 150;
    } else {
      return MediaQuery.of(context).size.width;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: card.elevation ?? 2,
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: getWidth(context),
        height: card.height ?? double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  '$baseIconPath/sunny.png',
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Parques",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
