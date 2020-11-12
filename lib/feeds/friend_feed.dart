import 'package:flutter/material.dart';
import 'package:rugby/components/panels/friend_panel.dart';

class FriendFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          FriendPanel()
        ],
      ),
    );
  }
}
