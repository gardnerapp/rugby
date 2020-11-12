import 'package:flutter/material.dart';
import 'package:rugby/components/panels/panel_styles.dart';

//location as title
//number of people going All the way to the left
//type as subtitle
//TODO can I add shadow and elevation to List tile

class LocationPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MetaPanel(

      ListTile(
          contentPadding: EdgeInsets.all(10.0),
        title: Text("Game @ 3:00PM Johnston HighSchool"),
        subtitle: Text("All Are Invited"),
        dense: true,
        leading: CircularLeading(Text("5"))
      ),
    );
  }
}
