import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black45, blurRadius: 8, offset: Offset(2, 4)),
        ],
      ),
      height: 250,
      alignment: Alignment.center,
      child: Text(
        'Flutter Basic',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 45,
          color: Colors.white,
        ),
      ),
    );
  }
}
