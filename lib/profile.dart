import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 60,
              backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/01/75/97/39/360_F_175973930_FOfQM7zFXsVuFLlz1H4PrU4YGZX14oFA.jpg'),
              ),
              Text('Nirupama',style: TextStyle(color:Colors.white,fontSize: 30 ),),
              Text('Flutter Developer',style: TextStyle(color: Colors.white60,),),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:3,color: Colors.white)),
                  hintText: 'Enter your number' ,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:3,color: Colors.white)),
                  hintText: 'Enter email' ,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
