import 'package:flutter/material.dart';

class ReviewStars extends StatelessWidget {
  final int stars;
  const ReviewStars({
    super.key,
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: List.generate(
          5,
          (index) => Icon(
            index < stars ? Icons.star : Icons.star_border,
            color: Colors.amber,
            size: 15,
          ),
        ),
      ),
    );
  }
}
