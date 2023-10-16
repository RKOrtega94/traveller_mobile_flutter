import 'package:flutter/material.dart';

class DestinationDetailView extends StatelessWidget {
  const DestinationDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Destination name",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nisl eu nunc. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nisl eu nunc.",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
