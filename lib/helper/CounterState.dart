import 'package:flutter/material.dart';

class Counterstate extends StatefulWidget {
  const Counterstate({super.key});

  @override
  State<Counterstate> createState() => _CounterstateState();
}

class _CounterstateState extends State<Counterstate> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Counter : $counter')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => counter++),
        child: Icon(Icons.add),
      ),
    );
  }
}
