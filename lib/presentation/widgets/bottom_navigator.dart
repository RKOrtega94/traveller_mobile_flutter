import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';
import 'package:traveller_mobile_flutter/presentation/provider/app_menu_index_provider.dart';

class AppBottomNavigatorBar extends ConsumerWidget {
  AppBottomNavigatorBar({super.key});

  final List<MenuItemModel> _items = <MenuItemModel>[
    MenuItemModel(
      index: 0,
      label: 'Inicio',
      iconPath: 'home.png',
    ),
    MenuItemModel(
      index: 1,
      label: 'Explorar',
      iconPath: 'location.png',
    ),
    MenuItemModel(
      index: 2,
      label: 'Favoritos',
      iconPath: 'favorite.png',
    ),
  ];

  Widget _buildItem(BuildContext context,
          {required bool isSelected, required MenuItemModel model, required Function(int) onClick}) =>
      InkWell(
        onTap: () => onClick(model.index),
        child: Material(
          elevation: isSelected ? 5 : 0,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Image.asset('$baseIconPath/${model.iconPath}'),
                ),
                Visibility(
                  visible: isSelected,
                  child: Row(
                    children: [
                      const SizedBox(width: 5),
                      Text(
                        model.label,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuIndex = ref.watch(menuIndexProvider);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _items
              .map((e) => _buildItem(
                    context,
                    isSelected: e.index == menuIndex,
                    model: e,
                    onClick: (index) => ref.read(menuIndexProvider.notifier).setIndex(index),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class MenuItemModel {
  final int index;
  final String label;
  final String iconPath;

  MenuItemModel({
    required this.index,
    required this.label,
    required this.iconPath,
  });
}
