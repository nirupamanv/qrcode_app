import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcode/button.dart';
import 'package:qrcode/image.dart';
import 'package:qrcode/profile.dart';
class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 50,
              child: Icon(Icons.person,size: 80),),
              SizedBox(height: 50,),
              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 50,),
              TextButton(onPressed:(){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Button()),);},
                child: Text('Scan'),style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white),),
                  primary: Colors.white,
                ),
              ),
              SizedBox(height: 20,),
              TextButton(onPressed:(){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),);},
                child: Text('Profile'),style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white),),
                  primary: Colors.white,
                ),
              ),


            ],

          ),
        ),

    );
  }
}
