import 'package:flutter/material.dart';
class BigMainButton extends StatelessWidget {
  final String text;
  final Color splash;
  BigMainButton(this.text, this.splash);
  @override
  Widget build(BuildContext context) {
    return  Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)),
        color: Colors.white,
        elevation: 16.0,
        child: RaisedButton(
          splashColor: this.splash,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0)),
          padding: const EdgeInsets.all(20.0),
          child: Ink(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.red,
                Colors.white,
                Colors.blue
              ]),
              borderRadius: BorderRadius.all(Radius.circular(80.0)),
            ),
            child: Container(
              constraints: const BoxConstraints(
                  minWidth: 100.0, minHeight: 100.0),
              // min sizes for Material buttons
              alignment: Alignment.center,
              child: Text("${this.text}", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            ),
          ),
        ));
  }
}
