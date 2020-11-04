import 'package:flutter/material.dart';
import 'package:rugby/components/app_bar.dart';
import 'package:rugby/components/big_main_button.dart';
import 'package:rugby/main_button.dart';

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
        appBar: customAppBar("Touch Rugby USA"),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Work(),
            BigMainButton("Play Now", Colors.red),
            BigMainButton("Create a Match", Colors.white),
            BigMainButton("My Player", Colors.blue),
          ],
        ));
  }
}

//Games Near Me, Post a Game
//add Box shadow to each of the cards

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Card(
        elevation: 16.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0)
        ),
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MainButton(Icons.fitness_center, Colors.red), MainButton(Icons.healing, Colors.white), MainButton(Icons.all_inclusive, Colors.blue)
          ],

        )
    );
  }
}
