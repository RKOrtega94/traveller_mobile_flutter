import 'package:flutter/material.dart';

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
