import 'package:flutter/material.dart';
import 'package:untitled/DrawerMenu.dart';
import 'PlayerStats.dart';

class Home extends StatefulWidget {
  final PlayerStats playerStats;

  Home({
    super.key,
    required this.playerStats,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: Colors.grey.shade500,
          ),
          drawer: DrawerMenu(
            playerStats: widget.playerStats,
          ),
          body: const Scaffold()),
    );
  }
}
