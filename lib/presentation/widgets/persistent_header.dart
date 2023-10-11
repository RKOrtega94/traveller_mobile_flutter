import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/notification_button.dart';

class AppPersistentHeader extends StatelessWidget {
  const AppPersistentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: CustomHeaderDelegate(
        child: Container(
            color: Theme.of(context).colorScheme.background,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Travellers",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                const AppNotification(),
              ],
            )),
      ),
    );
  }
}

class CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  CustomHeaderDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return shrinkOffset > 0
        ? Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            color: Theme.of(context).colorScheme.background,
            child: child,
          )
        : Container();
  }

  @override
  double get maxExtent => 90.0;

  @override
  double get minExtent => 90.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
