import 'package:flutter/material.dart';
import 'PlayerStats.dart';
import 'DrawerMenu.dart';


class Tasks extends StatelessWidget {

  final PlayerStats playerStats;
   const Tasks({super.key, required this.playerStats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Tasks'),
        backgroundColor: Colors.grey.shade500,
      ),
      // drawer: DrawerMenu(
      //   playerStats: playerStats,
      // ),
      );
  }
}
