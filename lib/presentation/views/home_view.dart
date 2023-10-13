import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.3,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                SvgPicture.asset(
                  "$baseIconPath/ec_map.svg",
                  fit: BoxFit.cover,
                  alignment: Alignment.centerRight,
                ),
                SvgPicture.asset(
                  "$baseIconPath/ec_map.svg",
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context)
                            .colorScheme
                            .background
                            .withOpacity(0.5),
                        Theme.of(context).colorScheme.background,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Positioned.fill(child: )
              ],
            ),
          ),
        )
      ],
      body: const CustomScrollView(),
    );
  }
}
