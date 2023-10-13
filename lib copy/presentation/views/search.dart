import 'package:flutter/material.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 2,
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        child: Center(
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
                      "¿Buscas algún sitio?",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
      ),
    );
  }
}
