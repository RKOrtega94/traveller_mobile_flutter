import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/screens/detail_screen.dart';
import 'package:traveller_mobile_flutter/presentation/views/destinations/destination_grid.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/detail_header.dart';

class ActivityDetailView extends StatelessWidget {
  const ActivityDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailScreen(
      header: DetailHeader(),
      child: DestinationGrid(),
    );
  }
}
