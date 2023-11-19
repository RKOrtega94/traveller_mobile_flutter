import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/data/models/banner.dart';

class BannerSwiper extends StatefulWidget {
  final List<BannerModel> banners;
  const BannerSwiper({super.key, required this.banners});

  @override
  State<BannerSwiper> createState() => _BannerSwiperState();
}

class _BannerSwiperState extends State<BannerSwiper> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: widget.banners.length,
      autoplay: true,
      pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
        activeColor: Theme.of(context).colorScheme.onPrimary,
        color: Colors.grey,
        size: 8,
      )),
      itemBuilder: (context, index) => FadeIn(
        child: Image.asset(
          widget.banners[index].image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
