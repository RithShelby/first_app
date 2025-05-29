import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team_app/pages/Home_page.dart';

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
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _updateDate();
  }

  void _updateDate() {
    setState(() {
      _currentDate = DateFormat('yyyy, MMM d, yyyy ').format(DateTime.now());
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
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
      body: const HomePage(),
    );
  }
}
