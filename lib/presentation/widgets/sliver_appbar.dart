import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';

class AppSliverAppbar extends StatelessWidget {
  const AppSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(
              "$BASE_ICON_PATH/ec_map.svg",
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
            ),
            SvgPicture.asset(
              "$BASE_ICON_PATH/ec_map.svg",
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
