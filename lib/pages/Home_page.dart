import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to start
        children: [
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Text(
              'Welcome everyone,',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              Card(
                color: Colors.green[200],
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      // Text section
                      Expanded(
                        flex: 5,
                        child: Text(
                          "I'm Peter who is trying to learn Flutter.",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ), // Space between text and Lottie
                      // Lottie animation
                      Expanded(
                        flex: 4,
                        child: Lottie.asset(
                          'assets/image/home.json',
                          width: 120, // Adjust width as needed
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Text(
                  "Why i should learn flutter ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Card(
                          color: Colors.green[200],
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              Text('Cross-Platform Development'),
                              Lottie.asset(
                                'assets/image/world.json',
                                width: 200, // Adjust width as needed
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.green[200],
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text('High Demand '),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          color: Colors.green[200],
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text('Fast Development'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
