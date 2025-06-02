import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Example Column & Row',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // row
          Row(
            children: [
              Expanded(child: Container(color: Colors.red, height: 50)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.green, height: 50)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.blue, height: 50)),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: Container(color: Colors.green, height: 50)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.red, height: 50)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.black, height: 50)),
            ],
          ),
          SizedBox(height: 40),
          Column(
            children: [
              Text(
                "Example Input Widgets",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Enter email ..'),
              ),
              Checkbox(
                value: isChecked,
                onChanged: (value) => setState(() => isChecked = value!),
              ),
              Switch(
                value: isChecked,
                onChanged: (value) => setState(() => isChecked = value),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.blue.shade100, width: 1),
                  ),
                ),
                child: Text('Login'),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  print('Tapped');
                },
                child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(20),
                  child: Text('Tap Me'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
