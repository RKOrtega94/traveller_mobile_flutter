import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/presentation/provider/_app_providers.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/icon_button.dart';

class DetailHeader extends ConsumerWidget {
  const DetailHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.25,
      collapsedHeight: MediaQuery.of(context).size.height * 0.25,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage(
                      "https://picsum.photos/200/300?random=1",
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2),
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Material(
                elevation: 4,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Activity title",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      AppIconButton(
                        icon: CupertinoIcons.heart,
                        text: "10",
                        padding: 20,
                        bgColor: darkMode.value ?? false
                            ? Colors.blue[900]
                            : Colors.blue[100],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
