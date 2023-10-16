import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/layouts/detail_layout.dart';
import 'package:traveller_mobile_flutter/presentation/views/destinations/destination_detail.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/carousel_header.dart';

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppDetailLayout(
      initialScroll: true,
      header: CarouselHeader(),
      child: DestinationDetailView(),
    );
  }
}
