import 'package:flutter/material.dart';

void main() {
  runApp(const Typography2A());
}

class Typography2A extends StatelessWidget {
  const Typography2A ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text('금호동3가'),),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Container(
              alignment: Alignment.topLeft,
              width: 200, height: 150, 
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/camera.jpg')
              )
              )
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)'),Text('성동구 행당동 10분 전',style: TextStyle(
                    fontSize: 10
                  ),),Text('201,000원'),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(Icons.favorite_border),
                  )]
                ),
              ))
              
              ] 
            
          ),
        ),
      )
    );
  }
}