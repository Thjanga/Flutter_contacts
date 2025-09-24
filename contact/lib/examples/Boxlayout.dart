import 'package:flutter/material.dart';

void main() {
  runApp(const Boxlayout());
}

class Boxlayout extends StatelessWidget {
  const Boxlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text('앱임'),
        ),
        body: Center
        (
          child: Container(
            width: 50, height: 50,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(0,0,30,0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
          ),
          ),
        ),
      )
    );
  }
}