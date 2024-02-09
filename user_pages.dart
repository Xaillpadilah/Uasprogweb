import 'package:flutter/material.dart';
import 'package:utswipal/util/view_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
      TextEditingController nama= TextEditingController();  
      TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();

      Future<void> inserrecord()  async
     {
      if(nama.text!="" || email.text!="" || password.text!=""){
      try{

        String uri ="http://10.0.2.2/crud_api/insert_record.php";

       var res = await http.post(Uri.parse(uri), body: {
           "nama": nama.text,
           "email": email.text,
           "password": password.text
        });

        var response = jsonDecode(res.body);
        if (response["success"] == true) 
        {
          print("Record Inserted");
        }
        else{
          print("some issue");
        }
  
        } 

      catch(e){
        print(e);
      }

     } else{
        print("please file all");
      }
     }

  @override    
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            controller: nama,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Masukan nama')
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            controller: email,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Masukan email')
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextFormField(
            controller: password,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('Masukan password')
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              inserrecord();
            },
            child: Text('tambah data'),
          ),
        ),
        Container(
           margin: EdgeInsets.all(10),
           child: Builder(
            builder: (context){
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> view_data()));
                },
              child: Text ("view data")
              );
            }
           )

        )
      ]),
     )
  );
    
  }
  
}

