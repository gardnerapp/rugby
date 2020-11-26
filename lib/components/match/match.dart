import 'package:flutter/material.dart';

//List of friends going
//Join if not going, show/ ask to go
//location
//? picture
//type
//Something Curved

class Match extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        Who()
    ],),);
  }
}

//Row showing Who is going to the match
//will recieve a list of users, randomly select them and show 5 of their profiels
class Who extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            UserGoing(),
            UserGoing(),
            UserGoing(),
            UserGoing(),
            UserGoing(),
            UserGoing(),
            UserGoing(),
            UserGoing(),
          ],
        ));
  }
}

class UserGoing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: 75.0,
      child: CircleAvatar(),
    );
  }
}

