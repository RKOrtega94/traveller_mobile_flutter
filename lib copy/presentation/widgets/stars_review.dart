import 'package:flutter/material.dart';

class AppStarsReview extends StatelessWidget {
  final int rate;
  const AppStarsReview(this.rate, {super.key});

  buildStars() {
    final stars = <Widget>[];
    for (var i = 0; i < 5; i++) {
      final star = Icon(
        i < rate ? Icons.star : Icons.star_border,
        color: Colors.amber,
        size: 15,
      );
      stars.add(star);
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: buildStars(),
      ),
    );
  }
}
