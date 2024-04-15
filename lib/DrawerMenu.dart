import 'package:flutter/material.dart';
import 'package:untitled/CustomDrawerHeader.dart';
import 'package:untitled/PlayerStats.dart';
import 'package:untitled/Tasks.dart';

import 'home.dart';


class DrawerMenu extends StatelessWidget {

  // final int level;
  // final int cash;
  // final int stamina;

  final PlayerStats playerStats;
  
  const DrawerMenu({
    super.key,
    required this.playerStats
    // required this.level,
    // required this.cash,
    // required this.stamina
  });

  @override
  Widget build(BuildContext context) {


    return NavigationDrawer(
        children: [
          Material(
            color: Colors.white,
            child: Column(
              children: [
                CustomDrawerHeader(playerStats: playerStats,),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    onItemPressed(context, () => Home(playerStats: playerStats));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.task),
                  title: const Text('Tasks'),
                  onTap: () {
                    onItemPressed(context, () => Tasks(playerStats: playerStats));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.inventory),
                  title: const Text('Inventory'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.accessibility_sharp),
                  title: const Text('Weapon dealer'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.accessibility_sharp),
                  title: const Text('Car dealer'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const Text('Gang'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.work),
                  title: const Text('Jobs'),
                  onTap: () {},
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.manage_accounts),
                  title: const Text('Account'),
                  onTap: () {},
                ),
              ],
            )
          )
        ],
      );
  }
void onItemPressed(BuildContext context, Widget Function() destinationBuilder) {
  Navigator.pop(context); // Usunięcie aktualnego ekranu ze stosu nawigacyjnego
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => destinationBuilder())); // Nawigacja do nowego ekranu
}
}

