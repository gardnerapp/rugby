import 'package:flutter/material.dart';

//profile picture
//username
//description of action
//clickable


class FriendPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {

          },
          child: Container(
            width: 48,
            height: 48,
            padding: EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: CircleAvatar(),
          ),
        ),
        title: Text('@mgScar', style: TextStyle(
          color: Colors.black, fontSize: 20.0,
        ),),
        dense: true,
        subtitle: Text(
              "Is attending a game @ 3:00pm Today!", style: TextStyle(
            color: Colors.black, fontSize: 15.0,

        ),
        ),
      )
    );
  }
}
