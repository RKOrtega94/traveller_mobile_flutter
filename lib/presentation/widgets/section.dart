import 'package:flutter/material.dart';

class AppSection extends StatelessWidget {
  final String? title;
  final Widget? route;
  final Widget child;
  const AppSection({
    super.key,
    this.title,
    this.route,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: title != null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    title ?? "Sin título",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              if (route != null)
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => route!),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Ver más",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 2),
          child,
        ],
      ),
    );
  }
}
