import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/banner.dart';
import 'package:traveller_mobile_flutter/presentation/components/skeletons/loading_animated_card.dart';
import 'package:traveller_mobile_flutter/presentation/provider/banner_provider.dart';

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
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth * 0.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: PageView(
                children: banners.value!
                    .map(
                      (banner) => Image.asset(
                        banner.image,
                        fit: BoxFit.cover,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
