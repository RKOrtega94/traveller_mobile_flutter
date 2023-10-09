import 'package:flutter/material.dart';

class AppNotification extends StatelessWidget {
  const AppNotification({super.key});

  @override
  Widget build(BuildContext context) {
    const int notifications = 20;
    return SizedBox(
      width: 35,
      height: 35,
      child: Stack(
        children: [
          const Icon(Icons.notifications, size: 30),
          Positioned(
            top: 0,
            right: 5,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  notifications.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
