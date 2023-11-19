import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/data/models/banner.dart';
import 'package:traveller_mobile_flutter/presentation/components/skeletons/loading_animated_card.dart';
import 'package:traveller_mobile_flutter/presentation/provider/banner_provider.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/banner/banner_swiper.dart';

class BannerList extends ConsumerWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<BannerModel>> banners = ref.watch(bannersProvider);

    if (banners is AsyncLoading) {
      return AppLoadingAnimatedCard(
        itemWidth: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.5,
      );
    }

    return Visibility(
      visible: banners.value?.isNotEmpty ?? false,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth * 0.5,
            child: BannerSwiper(
              banners: banners.value ?? [],
            ),
          ),
        ),
      ),
    );
  }
}
