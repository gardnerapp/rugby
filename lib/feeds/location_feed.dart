import 'package:flutter/material.dart';
import 'package:rugby/components/panels/location_panel.dart';

class LocationFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          LocationPanel()
        ],
      ),
    );
  }
}
