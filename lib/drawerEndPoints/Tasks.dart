import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../PlayerStats.dart';


class Tasks extends StatelessWidget {
  final PlayerStats playerStats;

  const Tasks({super.key, required this.playerStats});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tasks'),
          backgroundColor: Colors.grey.shade500,
        ),
        body: ListView(
          children: [
            Card(
              shape: ContinuousRectangleBorder(),
              elevation: 20,
              color: Colors.yellow.shade300,
              shadowColor: Colors.white24,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Task Title",
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("requirements"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("rewards"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Timer: 01:00"),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(5.0),
                                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                                    foregroundColor: MaterialStatePropertyAll(Colors.black54),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                    ),
                                  ),
                                    onPressed: () {
                                      print('something');
                                    },
                                    child: Text("Go!"))
                              ],
                            ),
                          ),
                          // color: Colors.white24,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              // borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [


                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
