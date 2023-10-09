import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';
import 'package:traveller_mobile_flutter/presentation/providers/app_page_provider.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/menu_icon_button.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(selectedPage);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppMenuIconButton(
              Image.asset("$BASE_ICON_PATH/home.png"),
              isSelected: currentPage == 0,
              title: "Inicio",
              onTap: () {
                ref.read(selectedPage.notifier).state = 0;
              },
            ),
            AppMenuIconButton(
              Image.asset("$BASE_ICON_PATH/location.png"),
              isSelected: currentPage == 1,
              title: "Explorar",
              onTap: () {
                ref.read(selectedPage.notifier).state = 1;
              },
            ),
            AppMenuIconButton(
              Image.asset("$BASE_ICON_PATH/routes.png"),
              isSelected: currentPage == 2,
              title: "Rutas",
              onTap: () {
                ref.read(selectedPage.notifier).state = 2;
              },
            ),
            AppMenuIconButton(
              Image.asset("$BASE_ICON_PATH/favorite.png"),
              isSelected: currentPage == 3,
              title: "Favoritos",
              onTap: () {
                ref.read(selectedPage.notifier).state = 3;
              },
            ),
          ],
        ),
      ),
    );
  }
}
