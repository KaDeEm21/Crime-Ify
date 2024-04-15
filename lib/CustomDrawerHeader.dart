import 'package:flutter/material.dart';

import 'PlayerStats.dart';

class CustomDrawerHeader extends StatelessWidget {
  // final int level;
  // final int cash;
  // final int stamina;

  final PlayerStats playerStats;

  const CustomDrawerHeader(
      {super.key,
      // required this.level,
      // required this.cash,
      // required this.stamina,
      required this.playerStats
      });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.grey.shade700,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                  // tu będzie kiedyś avatar gracza
                  ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Welcome to Crime-ify',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Level ${playerStats.level}',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
