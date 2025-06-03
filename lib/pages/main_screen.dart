import 'package:flutter/material.dart';
import 'package:team_app/pages/Home_page.dart';
import 'package:team_app/pages/About_page.dart';
import 'package:team_app/pages/Practice_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [HomePage(), AboutPage(), PracticePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: NavigationBar(
              height: 60,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              backgroundColor: Colors.white,
              indicatorColor: Colors.blue.shade100,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: 'About',
                ),
                NavigationDestination(
                  icon: Icon(Icons.note_rounded),
                  selectedIcon: Icon(Icons.note_rounded),
                  label: 'Practice',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
