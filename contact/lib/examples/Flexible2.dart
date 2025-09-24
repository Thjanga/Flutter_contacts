import 'package:flutter/material.dart';

void main() {
  runApp(const Flexible2());
}

class Flexible2 extends StatelessWidget {
  const Flexible2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Row( // 가로, 세로(Column)
          children: [
            // 비율로 설정
            // Flexible(child: Container(color: Colors.blue,),flex: 5,),
            // Flexible(child: Container(color: Colors.green,),flex: 5,),

            // Expanded는 박스 하나를 다 채움
            Expanded(child: Container(color: Colors.blue,)),
            Container(width: 100,color: Colors.green),
          ],
        ),
        
      ),
    );
  }
}