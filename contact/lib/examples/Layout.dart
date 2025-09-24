import 'package:flutter/material.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home : Text('안녕')
      // home : Icon(Icons.shop)
      // home : Image.asset('assets/gift.jpg')
      // home : Center(
      //     child : Container(width: 50,height: 50,color: Colors.blue) // Flutter의 단위는 LP이다
      // )

      // home : Scaffold( // 상중하로 나눠줌
      //   appBar: AppBar(), // 상단
      //   body: Container(),
      //   bottomNavigationBar: BottomAppBar(), // 하단
      // )

      // home : Scaffold(
      //   body: Row(// 여러 위젯을 가로로 배치 > 세로 (Column)
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Icon(Icons.star),
      //       Icon(Icons.star),
      //     ],
      //   ),
      // )
      
      home : Scaffold(
        appBar: AppBar(
          title: Text('앱제목'),
          backgroundColor: Colors.blue,
        ),

        body: Text('안녕'),

        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          ),
        ),
      )
    );
  }
}
