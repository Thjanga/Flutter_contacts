import 'package:flutter/material.dart';

void main() {
  runApp(const Typography2());
}

class Typography2 extends StatelessWidget {
  const Typography2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar( title: Text('앱임'),),
        body: SizedBox(
          child: Text('안녕하세요',style: TextStyle(color: Colors.red),), 
          /* 
          color : Colors.red, 
          color : Color.fromRGBO(20,130,50,0.8), 
          color : Color(0xffffffff) 
          색상 넣는 법
          */
          
          /*
          TextButton( child: Text('버튼임'), onPressed: (){} )
          ElevatedButton( child: Text('버튼임'), onPressed: (){} )
          IconButton( icon: Icon(), onPressed: (){} )
          버튼 만들기
          */

          /*
          title: 제목
          leading: 제목왼쪽 아이콘
          actions: 제목오른쪽 아이콘들
          */

          
        ),
      )
    );
  }
}