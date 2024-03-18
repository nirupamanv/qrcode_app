import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:qrcode/reg.dart';
import 'package:qrcode/scan.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
 final _rolnoController=TextEditingController();
 final _passwordController=TextEditingController();
 Future<void> login() async{
   Uri uri=Uri.parse(' https://scnner-web.onrender.com/api/login');
   var response=await http.post(uri,
   headers:<String,String>{
     'Content-Type':'application/json;charset=UTF-8',
   },
   body:jsonEncode({
     'rolno':_rolnoController,
   'password':_passwordController,
   }));
   var data=jsonDecode(response.body);
   print(data["message"]);

   print(response.statusCode);
   print(response.body);
   if(response.statusCode==200){
   Navigator.push(
   context,
   MaterialPageRoute(builder: (context) => Scan()),
   );
   } else{
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data["message"])));
   }
   print(_rolnoController.text);
   print(_passwordController.text);

 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',style: TextStyle(color:Colors.white,fontSize: 35),),
              SizedBox(height: 30,),
              TextField(
               controller: _rolnoController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(width:3,color: Colors.white),),
                  hintText: 'Enter your Roll no.',
                  hintStyle: TextStyle(color: Colors.white),

                ),
              ),
              SizedBox(height: 30,),
              TextField(
               controller: _passwordController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:3,color: Colors.white)),
                  hintText: 'Enter your password.' ,
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed: (){login();
              /*  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Scan()),
              );*/
                }, child: Text('Login'),style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                primary: Colors.white,
              ),),
              SizedBox(height: 30,),
              TextButton(onPressed:(){
               Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => Reg()),
              );
            },
                child: Text('dont have account?register',
                style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
    );
  }
}
