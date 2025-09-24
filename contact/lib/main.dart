import 'package:flutter/material.dart';
import 'examples/Boxlayout.dart';
import 'examples/Layout.dart';
import 'examples/Typography2.dart';
import 'examples/Typography2A.dart';
import 'examples/CustomWidget2.dart';
import 'examples/ListviewBuilder2.dart';
import 'examples/State2.dart';
import 'examples/Dialog2.dart';
import 'examples/Sendstate.dart';
import 'examples/sendstate3.dart';
import 'examples/Permission2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 무엇을 실행할지 결정
      // home: Layout(),
      // home : Boxlayout(),
      // home : Typography2()
      // home : Typography2A()
      // home : CustomWidget2()
      // home: ListviewBuilder2(),
      // home: State2(),
      // home: Dialog2(),
      // home: Sendstate(),
      // home: sendstate3()
      home: Permission2(),
    );
  }
}