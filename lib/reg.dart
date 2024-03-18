import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qrcode/login.dart';
class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  final _rolNoController=TextEditingController();
  final _nameNoController=TextEditingController();
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();

  Future<void> register() async{
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    var response=await http.post(uri,
    headers:<String,String>{
      'Content-Type':'application/json;charset=UTF-8',
    },
    body: jsonEncode({
      'rolno':_rolNoController.text,
      'name':_nameNoController.text,
      'email':_emailController.text,
      'password':_passwordController.text,
    }));
    var data=jsonDecode(response.body);
    print(data["message"]);

    print(response.statusCode);
    print(response.body);
    if(response.statusCode==200){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    } else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["message"])));
    }
    print(_rolNoController.text);
    print(_nameNoController.text);
    print(_emailController.text);
    print(_passwordController.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text('Registration.',style: TextStyle(color: Colors.white) ,),
        ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(height: 30,),
    TextField(
      controller:_nameNoController ,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width:3,color: Colors.white),),
    hintText: 'Enter your name:',
    hintStyle: TextStyle(color: Colors.white),

    ),
    ),
    SizedBox(height: 30,),
    TextField(
      controller:_rolNoController ,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:3,color: Colors.white)),
    hintText: 'Enter your roll no.' ,
    hintStyle: TextStyle(color: Colors.white),
    ),
    ),
      SizedBox(height: 30,),
    TextField(
      controller: _emailController,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:3,color: Colors.white)),
    hintText: 'Enter your Email' ,
    hintStyle: TextStyle(color: Colors.white),
    ),
    ),
      SizedBox(height: 30,),
    TextField(
      controller:_passwordController ,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:3,color: Colors.white)),
    hintText: 'Enter your password.' ,
    hintStyle: TextStyle(color: Colors.white),
    ),
    ),
      SizedBox(height: 30,),
      TextButton(onPressed:(){register();},
        child: Text('Register'),style: TextButton.styleFrom(
          side: BorderSide(color: Colors.white,),
          primary: Colors.white,
        ),
      ),
    ]
    ),
      ),

    );
  }
}

