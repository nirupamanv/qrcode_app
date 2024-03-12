import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',style: TextStyle(color:Colors.white,fontSize: 35),),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width:3,color: Colors.white),),
                  hintText: 'Enter your Roll no',
                  hintStyle: TextStyle(color: Colors.white),

                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:3,color: Colors.white)),
                  hintText: 'Enter your password' ,
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed: (){}, child: Text('Login'),style: TextButton.styleFrom(
               shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                primary: Colors.white,
              ),),
              SizedBox(height: 30,),
             TextButton(onPressed:(){}, child: Text('dont have account?register',
               style: TextStyle(color: Colors.white),),
               )
            ],
          ),
        ),
      ),
    );
  }
}
