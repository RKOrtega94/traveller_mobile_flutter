import 'dart:math';

import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';
import 'package:traveller_mobile_flutter/presentation/pages/place/place_detail.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/stars_review.dart';

class AppPlaceCard extends StatelessWidget {
  const AppPlaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final double width =
          constraints.maxWidth == double.infinity ? 300 : constraints.maxWidth;
      return InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const PlaceDetailScreen(),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: const AssetImage(
                    "$BASE_IMAGE_PATH/cotopaxi.jpg",
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Volcán Cotopaxi",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "Latacunga, Ecuador",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: AppStarsReview(Random().nextInt(5) + 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
