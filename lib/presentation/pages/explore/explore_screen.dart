import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/views/map.dart';
import 'package:traveller_mobile_flutter/presentation/views/places_paginator.dart';
import 'package:traveller_mobile_flutter/presentation/views/search.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const AppMap(
            markers: [],
          ),
          SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Positioned(
                  top: 0,
                  child: AppSearch(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: double.infinity,
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(10),
                  child: const PlacesPaginator(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
