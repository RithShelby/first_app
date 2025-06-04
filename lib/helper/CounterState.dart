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
    return Column(
      children: [
        Text(
          'Counter : $counter',
          // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () => setState(() => counter++),
          child: Text('Increase'),
        ),
      ],
    );
  }
}
