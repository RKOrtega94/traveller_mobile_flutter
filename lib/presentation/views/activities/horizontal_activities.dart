import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/presentation/screens/detail_screen.dart';
import 'package:traveller_mobile_flutter/presentation/views/activity_detail_view.dart';

class ActivitiesHorizontal extends StatelessWidget {
  const ActivitiesHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        width: constraints.maxWidth,
        height: 100,
        child: ListView.builder(
          itemCount: 5,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => LayoutBuilder(
            builder: (context, constraints) => InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetailScreen(
                    child: ActivityDetailView(),
                  ),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: constraints.maxWidth == double.infinity
                        ? constraints.maxHeight
                        : constraints.maxWidth,
                    height: constraints.maxWidth == double.infinity
                        ? constraints.maxHeight
                        : constraints.maxWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/200/300?random=$index"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Actividad $index",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
