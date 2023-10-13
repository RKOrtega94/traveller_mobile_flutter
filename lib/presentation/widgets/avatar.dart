import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/core/constants.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxSize =
          constraints.maxWidth > MediaQuery.of(context).size.width * 0.5
              ? MediaQuery.of(context).size.width * 0.5
              : constraints.maxWidth;
      return Container(
        width: maxSize,
        height: maxSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Material(
                elevation: 2,
                shape: const CircleBorder(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "https://picsum.photos/200/300",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                onTap: () {},
                child: Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("$baseIconPath/camera.png", width: 20),
                        const SizedBox(width: 5),
                        Text(
                          "Cambiar foto",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
