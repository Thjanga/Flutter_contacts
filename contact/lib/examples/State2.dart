import 'package:flutter/material.dart';

void main() {
  runApp(State2());
}

class State2 extends StatefulWidget {
    State2({super.key});

  @override
  State<State2> createState() => _State2State();
}

class _State2State extends State<State2> {
  var a = 1;
  var name=['김영숙','홍길동','피자집'];
  var like = [0,0,0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   child: Text(a.toString()),
        //   onPressed: (){
        //     setState(() {
        //       a++;
        //     });
        //   },
        // ),

        appBar: AppBar(
          title: Text("연락처"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Text(like[i].toString()),
              title: Text(name[i]),
              trailing: TextButton(onPressed: (){
                setState(() {
                  like[i]++;
                });
              }, child: Text('Like')),
            );
          },
        ),
      ),
    );
  }
}
