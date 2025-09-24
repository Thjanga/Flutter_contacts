import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Sendstate(),
    )
    );
}

class Sendstate extends StatefulWidget {
  Sendstate({super.key});

  @override
  State<Sendstate> createState() => _SendstateState();
}

class _SendstateState extends State<Sendstate> {
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
                return DialogUI(state : a);
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

class DialogUI extends StatelessWidget {
  const DialogUI({super.key,this.state});

  final state;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                    title: Text('Contact'),
                                    content: Column(
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

/*
(MyApp 안의 DialogUI() 쓰던 곳)
DialogUI( state : a )
*/