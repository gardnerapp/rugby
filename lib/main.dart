import 'package:flutter/material.dart';
import 'package:rugby/components/app_bar.dart';

//create game
//rsvp to game
//see who is going
//create profile
//


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Touch Rugby Now"),
      persistentFooterButtons: customFooting,
    );
  }
}

