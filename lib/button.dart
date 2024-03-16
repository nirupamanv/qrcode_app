import 'package:flutter/material.dart';
import 'package:qrcode/profile.dart';
class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width:3,color: Colors.white)),
        hintText: '' ,
        filled: true,
        fillColor: Colors.white,

                ),
              ),
              SizedBox(height: 50,),
              TextButton(onPressed: (){//Navigator.push(
               // context,
                //MaterialPageRoute(builder: (context) => Profile()),
             // );
            },
                child: Text('Profile'),style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                primary: Colors.white,
              ),),
            ],
          ),
        ),

    );
  }
}
