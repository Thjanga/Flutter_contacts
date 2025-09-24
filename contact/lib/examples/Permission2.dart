import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

void main() {
  runApp(
      MaterialApp(
        home: Permission2(),
      )
  );
}

class Permission2 extends StatefulWidget {
  Permission2({super.key});

  @override
  State<Permission2> createState() => _Permission2State();
}

class _Permission2State extends State<Permission2> {

  getPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('허락됨');
      List<Contact> contacts = await FlutterContacts.getContacts(withProperties: true);
      setState(() {
        name = contacts;
      });
    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();
      openAppSettings();
    }
  }

  addContact(String name, String phone) async{
    var status = await Permission.contacts.status;
    if (status.isGranted){
          final newContact = Contact()
        ..name = Name(first: name)   // 이름
        ..phones = [Phone((phone))];   // 전화번호
      await FlutterContacts.insertContact(newContact);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var total = 3;
  var a = 1;
  List<Contact> name = [];
  // var name = []; == List <dynamic> = [];
  var like = [0, 0, 0];

  addOne(){
    setState(() {
      total++;
    });
  }

  addName(data){
    setState(() {
      name.add(Contact()..name = Name(first: data));
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
              return DialogUI(addOne : addOne, addName : addName,addContact: addContact);
            },
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("연락처, 총 ${name.length}명"),
        actions: [IconButton(onPressed: (){getPermission();
          }, icon: Icon(Icons.contacts))],
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(name[i].name.first ?? 'Error'),
          );
        },
      ),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({super.key,this.state, this.addOne,this.addName,this.addContact});

  final state;
  final addOne;
  final addName;
  final addContact;
  var inputData  = TextEditingController();
  var inputData2 = '';

  var inputName = '';
  var inputPhone = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      title: Text('Contact'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onChanged: (text){
              inputName = text;
            },
            decoration: InputDecoration(
              labelText: '이름 입력',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          TextField(
            onChanged: (text){
              inputPhone = text;
            },
            decoration: InputDecoration(
              labelText: '전화번호 입력',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          )
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }
            , child: Text('Cancel')),
        TextButton(onPressed: (){
          addOne();
          addName(inputName);
          addContact(inputName, inputPhone);
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