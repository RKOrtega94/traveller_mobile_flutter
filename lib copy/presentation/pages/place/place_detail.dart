import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBody: true,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: BuilderPersistentHeaderDelegate(
              maxExtent: MediaQuery.of(context).size.height,
              minExtent: 200,
              builder: (percent) => DetailHeader(
                topPercent: ((1 - percent) / .7).clamp(0.0, 1.0),
                bottomPercent: (percent / .3).clamp(0.0, 1.0),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: Placeholder()),
          const SliverToBoxAdapter(child: Placeholder()),
          const SliverToBoxAdapter(child: Placeholder()),
        ],
      ),
    );
  }
}

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    super.key,
    required this.topPercent,
    required this.bottomPercent,
  });

  final double topPercent;
  final double bottomPercent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemCount: 5,
            physics: const BouncingScrollPhysics(),
            controller: PageController(viewportFraction: 0.9),
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    "$BASE_IMAGE_PATH/cotopaxi.jpg",
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black26,
                    BlendMode.srcATop,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Container(
                width: index == 0 ? 16 : 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: index == 0
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BuilderPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  BuilderPersistentHeaderDelegate({
    required double maxExtent,
    required double minExtent,
    required Widget Function(double percent) builder,
  })  : _maxExtent = maxExtent,
        _minExtent = minExtent,
        _builder = builder;

  final double _maxExtent;
  final double _minExtent;
  final Widget Function(double percent) _builder;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _builder(shrinkOffset / maxExtent);
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
