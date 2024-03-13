import 'package:flutter/material.dart';
class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text('Registration',style: TextStyle(color: Colors.white) ,),
        ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(height: 30,),
    TextField(
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width:3,color: Colors.white),),
    hintText: 'Enter your name',
    hintStyle: TextStyle(color: Colors.white),

    ),
    ),
    SizedBox(height: 30,),
    TextField(
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:3,color: Colors.white)),
    hintText: 'Enter your roll no.' ,
    hintStyle: TextStyle(color: Colors.white),
    ),
    ),
    TextField(
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:3,color: Colors.white)),
    hintText: 'Enter your Email' ,
    hintStyle: TextStyle(color: Colors.white),
    ),
    ),
    TextField(
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:3,color: Colors.white)),
    hintText: 'Enter your password.' ,
    hintStyle: TextStyle(color: Colors.white),
    ),
    ),
      SizedBox(height: 30,),
      TextButton(onPressed:(){}, child: Text('Register',
        style: TextStyle(color: Colors.white),),
      )
    ]
    ),
      ),
      ),
    );
  }
}

