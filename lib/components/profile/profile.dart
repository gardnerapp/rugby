import 'package:flutter/material.dart';
import 'PlayerInfo.dart';
import 'stats.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PlayerInfoView(),
        Stats(),
      ],
    );
  }
}




//todo refactor stat text, stat container, add picture, possible move mates and name to top