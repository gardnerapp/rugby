import 'package:flutter/material.dart';
import 'package:rugby/components/panels/panel_styles.dart';
import 'panel.dart';

//location as title
//number of people going All the way to the left
//type as subtitle
//TODO can I add shadow and elevation to List tile

class LocationPanel extends StatelessWidget {
  //final Game

  @override
  Widget build(BuildContext context) {
    return Panel(
      title: "Game @ 3:00PM Johnston HighSchool",
      subtitle: "All Are Invited",
      leading: CircularLeading(Text("5", style: leadingTextStyle(),)),
    );
  }
}



