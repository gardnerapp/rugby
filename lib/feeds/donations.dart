import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Donations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20,),
          Text("Generous Donations: ", style: donationText()),
          Divider(height: 20,),
          SizedBox(height: 100,),
          QrImage(
            data: "1234567890",
            version: QrVersions.auto,
            size: 150.0,
          ),
          SizedBox(height: 50,),
          Text("For more infomation visit\n", style: TextStyle(
            fontSize: 18.0,
            color: Colors.black
          ),),
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "https://example.com",
                style: TextStyle(color: Colors.blue,
                    fontSize: 20.0,
                    decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
              )
            ]
          ))
        ],
      )
    );
  }
}

TextStyle donationText(){
  return TextStyle(
    color: Colors.black,
      fontSize: 25
  );
}
