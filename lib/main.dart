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
        appBar: customAppBar("Touch Rugby USA"),
        body: Container(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 10,
                padding: const EdgeInsets.all(8),
                child: Text("Find a Game near me ")
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('My Profile'),
                color: Colors.white,
              ),
            ],
          )
        ));
  }
}

//Games Near Me, Post a Game
//add Box shadow to each of the cards
