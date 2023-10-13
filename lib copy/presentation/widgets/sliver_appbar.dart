import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traveller_mobile_flutter/core/constants/app_constants.dart';
import 'package:traveller_mobile_flutter/presentation/pages/profile/profile_screen.dart';
import 'package:traveller_mobile_flutter/presentation/views/cities_slider.dart';
import 'package:traveller_mobile_flutter/presentation/widgets/notification_button.dart';

class AppSliverAppbar extends StatelessWidget {
  const AppSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final baseHeight = MediaQuery.of(context).size.width * 0.65;
    return SliverAppBar(
      expandedHeight: baseHeight > 300 ? 300 : baseHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(
              "$BASE_ICON_PATH/ec_map.svg",
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.background.withOpacity(0.5),
                BlendMode.darken,
              ),
            ),
            SvgPicture.asset(
              "$BASE_ICON_PATH/ec_map.svg",
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.background.withOpacity(0.5),
                BlendMode.darken,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.background.withOpacity(0.5),
                    Theme.of(context).colorScheme.background,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top + 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.65 -
                    MediaQuery.of(context).padding.top -
                    10,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const ProfileScreen(),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network(
                                    "https://picsum.photos/200/300",
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Hola John",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const AppNotification()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Busquemos tu siguiente",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          "destino",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffB8860B),
                              ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    const Icon(Icons.search),
                                    const SizedBox(width: 10),
                                    Text(
                                      "¿A dónde quieres ir?",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: Colors.grey,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.filter_list,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const CitiesSlider(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
