import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


// ignore: must_be_immutable
class update_record extends StatefulWidget {
  String nama;
  String email;
  String password;
  update_record(this.nama,this.email,this.password);


  @override
  State<update_record> createState() => _update_recordState();
}
class _update_recordState extends State<update_record> {
      TextEditingController nama= TextEditingController();  
      TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();

      Future<void> updaterecord() async {
       try {
         String uri = "http://10.0.2.2/crud_api/update_data.php";

        var res = await http.post(Uri.parse(uri),body:
        {
        "nama":nama.text,
          "email":email.text,
           "password":password.text,
        });
        var response=jsonDecode(res.body);
        if(response["success"]=="true"){
          print("updated");
        }else{
          print("some issue");
        }

        
          }catch(e){
            print(e);
          }
}
  @override
  void initState(){
    // TODO: implemet iniState
    nama.text=widget.nama;
     email.text=widget.email;
      password.text=widget.password;
    
    
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("update_data")),
      body: Column(
        children: [
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
            onPressed: (){
              updaterecord();
            },
            child: Text('update'),
          )
        ),
      ]));
  }

}