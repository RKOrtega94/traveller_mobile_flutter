import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';
import 'package:traveller_mobile_flutter/presentation/provider/_app_providers.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/icon_button.dart';

class CarouselHeader extends StatelessWidget {
  const CarouselHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: BuilderPersistentHeaderDelegate(
        maxExtent: MediaQuery.of(context).size.height,
        minExtent: 300,
        builder: (percent) => DetailHeader(
          topPercent: ((1 - percent) / .7).clamp(0.0, 1.0),
          bottomPercent: (percent / .3).clamp(0.0, 1.0),
        ),
      ),
    );
  }
}

class DetailHeader extends ConsumerWidget {
  const DetailHeader({
    super.key,
    required this.topPercent,
    required this.bottomPercent,
  });

  final double topPercent;
  final double bottomPercent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return Stack(
      children: [
        Positioned.fill(
          child: Transform.scale(
            scale: lerpDouble(1, 1.3, bottomPercent)!,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: 5,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "$baseImagePath/cotopaxi.jpg",
                          ),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black26,
                            BlendMode.darken,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                )
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: null,
          child: Column(
            children: [
              Visibility(
                visible: topPercent > 0.5,
                child: Padding(
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
                              : Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: darkMode.value ?? false
                      ? Theme.of(context).colorScheme.surface
                      : Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                alignment: Alignment.topCenter,
                height: 140,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          const AppIconButton(
                            icon: Icons.favorite_border,
                            text: "4",
                          ),
                          const SizedBox(width: 5),
                          const AppIconButton(
                            icon: Icons.chat_bubble_outline,
                            text: "4",
                          ),
                          const Spacer(),
                          AppIconButton(
                            icon: CupertinoIcons.reply,
                            text: "10",
                            padding: 20,
                            bgColor: darkMode.value ?? false
                                ? Colors.blue[900]
                                : Colors.blue[100],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                // Random image
                                "https://picsum.photos/200",
                              ),
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    "Hace 2 horas",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground
                                              .withOpacity(0.5),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                  ),
                                  SizedBox(
                                    width: 2.5,
                                  ),
                                  Text(
                                    "Seguir",
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 10,
          child: BackButton(
            color: Theme.of(context).colorScheme.onBackground,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.background.withOpacity(0.25),
              ),
              shape: MaterialStateProperty.all(
                const CircleBorder(),
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
