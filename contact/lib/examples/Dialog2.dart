import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Dialog2(),
    )
    );
}

class Dialog2 extends StatefulWidget {
  Dialog2({super.key});

  @override
  State<Dialog2> createState() => _Dialog2State();
}

class _Dialog2State extends State<Dialog2> {
  var a = 1;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return DialogUI();
              },
            );
          },
          child: Icon(Icons.add), 
        ),
        appBar: AppBar(
          title: Text("연락처"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(name[i]),
            );
          },
        ),
      );
  }
}

/*
context란 > 현재 위젯의 부모들이 누군지 담겨있음 (족보)
showDialog()
Navigator() 
Theme.of()
Scaffold.of()

이런 함수들은 context를 (족보를) 소괄호 안에 집어넣어야 잘 작동하는 함수
*/

class DialogUI extends StatelessWidget {
  const DialogUI({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                    title: Text('Contact'),                content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
        decoration: InputDecoration(
          labelText: '전화번호 입력',
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.phone, 
      ),
                      ],
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }
                      , child: Text('Cancel')),
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }
                      , child: Text('Ok'))
                    ],
                        
                  );
  }
}