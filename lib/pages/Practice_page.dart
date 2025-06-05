import 'package:flutter/material.dart';
import 'package:team_app/helper/CounterState.dart';
import 'package:team_app/widget/Dialog.dart';
import 'package:team_app/widget/Snackbar.dart';

class PracticePage extends StatefulWidget {
  const PracticePage({super.key});

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
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
              Expanded(child: Container(color: Colors.greenAccent, height: 50)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.amber, height: 50)),
              SizedBox(width: 10),
              Expanded(child: Container(color: Colors.deepOrangeAccent, height: 50)),
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
          SizedBox(height: 10),
          Column(
            children: [
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // Disable inner scrolling
                children: List.generate(6, (index) {
                  return Card(
                    margin: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Center(child: Text('Item $index')),
                  );
                }),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                'Example of using State',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Counterstate(),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Center(child: Text('Example of ShowDialog and')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomShowDialog()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomSnackbar()],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
