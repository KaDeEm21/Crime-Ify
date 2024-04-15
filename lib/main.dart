
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Tasks.dart';
import 'package:untitled/home.dart';

import 'PlayerStats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    PlayerStats playerStats = PlayerStats(100, 2, 200, 0);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(playerStats: playerStats),
      // home: Tasks(),
      debugShowCheckedModeBanner: false,
    );
  }
}

