import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
          child: Column(
            children: [
              Person(),
            ],
          ),
        ),
      ),
    );
  }
}

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 0),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Иванов Иван Иванович",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10.0),
            Text(
              'Агрессивный Инвестор',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }
}
