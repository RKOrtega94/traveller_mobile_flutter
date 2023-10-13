import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/views/carousel_header.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/builder_persistent_header_delegate.dart';

class DetailLayout extends StatelessWidget {
  const DetailLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: BuilderPersistentHeaderDelegate(
              maxExtent: MediaQuery.of(context).size.height,
              minExtent: 200,
              builder: (percent) => CarouselHeader(
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
