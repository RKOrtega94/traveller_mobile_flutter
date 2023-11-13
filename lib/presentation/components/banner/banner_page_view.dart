import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/banner.dart';

class BannerPageView extends StatefulWidget {
  final List<BannerModel> banners;
  const BannerPageView({super.key, required this.banners});

  @override
  State<BannerPageView> createState() => _BannerPageViewState();
}

class _BannerPageViewState extends State<BannerPageView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
