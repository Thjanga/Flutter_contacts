import 'package:flutter/material.dart';

void main() {
  runApp(const CustomWidget2());
}

class CustomWidget2 extends StatelessWidget {
  const CustomWidget2({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱제목',
          style: TextStyle(
            color: Colors.white) 
            ),
          backgroundColor: Colors.blue,
        ),
        body: ListView( // 스크롤바가 생기고 메모리를 절약해줌
        children: [
          CustomItem(),
          CustomItem(),
          CustomItem(),
        ],
        ),
        ),
      );
  }
}

// class ShopItem extends StatelessWidget {
//   const ShopItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//           child: Text('Hi'),
//         );
//   }
// }

// var a = SizedBox(
//   child: Text('Hi'),
// );


class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.person),
        Text('홍길동')
      ],
    );
  }
}