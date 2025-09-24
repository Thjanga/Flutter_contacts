import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: sendstate3(),
    )
    );
}

class sendstate3 extends StatefulWidget {
  sendstate3({super.key});

  @override
  State<sendstate3> createState() => _sendstate3State();
}

class _sendstate3State extends State<sendstate3> {
  var total = 3;
  var a = 1;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  addOne(){
    setState(() {
      total++;
    });
  }
  
  addName(data){
    setState(() {
      name.add('$data');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return DialogUI(addOne : addOne, addName : addName);
              },
            );
          },
          child: Icon(Icons.add), 
        ),
        appBar: AppBar(
          title: Text("연락처, 총 $total 명"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: name.length,
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
    DialogUI({super.key,this.state, this.addOne,this.addName});

  final state;
  final addOne;
  final addName;
  var inputData  = TextEditingController();
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
                    title: Text('Contact'),
                                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
        onChanged: (text){
          inputData2 = text;
        },
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
                        addOne();
                        addName(inputData2);
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