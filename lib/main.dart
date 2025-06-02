import 'package:flutter/material.dart';
import 'package:team_app/helper/CustomDate.dart';
import 'package:team_app/pages/Home_page.dart';
import 'package:team_app/pages/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _currentDate;

  void _updateDate() {
    setState(() {
      _currentDate = getCurrentFormattedDate();
    });
  }

  @override
  void initState() {
    super.initState();
    _updateDate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        // on the left
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/image/spiderman.jpg'),
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            const Text(
              'Hello, Peter',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              _currentDate,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        // on the right
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: IconButton(
              onPressed: () {
                // Search action
              },
              icon: const Icon(Icons.search),
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: const MainScreen(),
    );
  }
}
