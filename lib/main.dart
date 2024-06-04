import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPointsCounterApp());
}

class BasketballPointsCounterApp extends StatefulWidget {
  const BasketballPointsCounterApp({super.key});

  @override
  State<BasketballPointsCounterApp> createState() =>
      _BasketballPointsCounterAppState();
}

class _BasketballPointsCounterAppState
    extends State<BasketballPointsCounterApp> {
  int teamApoints = 0;

  int teamBpoints = 0;

  void addOnePoints() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text(
                "Points Counter",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamApoints',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              teamApoints++;
                              setState(() {});
                            },
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(fontSize: 16),
                            )
                            ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              teamApoints += 2;
                              setState(() {});
                            },
                            child: const Text(
                              'Add 2 Points',
                              style: TextStyle(fontSize: 16),
                            )
                            ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              teamApoints += 3;
                              setState(() {});
                            },
                            child: const Text(
                              'Add 3 Points',
                              style: TextStyle(fontSize: 16),
                            )
                            ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 380,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamBpoints',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              teamBpoints++;
                              setState(() {});
                            },
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(fontSize: 16),
                            )
                            ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              teamBpoints += 2;
                              setState(() {});
                            },
                            child: const Text(
                              'Add 2 Points',
                              style: TextStyle(fontSize: 16),
                            )
                            ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: const Size(150, 50),
                            ),
                            onPressed: () {
                              teamBpoints += 3;
                              setState(() {});
                            },
                            child: const Text(
                              'Add 3 Points',
                              style: TextStyle(fontSize: 16),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      teamApoints = 0;
                      teamBpoints = 0;
                      setState(() {
                        
                      });
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(fontSize: 16),
                    )
                    ),
              ],
            )
            )
            );
  }
}
