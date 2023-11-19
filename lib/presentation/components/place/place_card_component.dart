import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';
import 'package:traveller_mobile_flutter/data/models/place.dart';
import 'package:traveller_mobile_flutter/presentation/view_models/app_card_view_model.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/card.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final double? width;
  const PlaceCard({super.key, required this.place, this.width});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      card: AppCardViewModel(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage.assetNetwork(
                    placeholder: '$baseImagePath/no-image.jpg',
                    image: place.images[0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Colors.black54, Colors.black26],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.zero,
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.white,
                    fill: 1,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: width ?? 250,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                place.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Row(
                              children: [
                                Text(
                                  "4.6",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(width: 2),
                                const Icon(
                                  CupertinoIcons.star_fill,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Text(
                          place.address,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          width: width),
    );
  }
}
