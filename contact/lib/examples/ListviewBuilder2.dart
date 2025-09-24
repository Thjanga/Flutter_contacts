import 'package:flutter/material.dart';

void main() {
  runApp(ListviewBuilder2());
}

class ListviewBuilder2 extends StatelessWidget {
    ListviewBuilder2({super.key});

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print(a);
            a++;
          },
        ),
        appBar: AppBar(
          title: Text("고객 리스트"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text('홍길동'),
            );
          },
        ),
      ),
    );
  }
}
