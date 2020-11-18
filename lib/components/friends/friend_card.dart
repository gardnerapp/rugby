import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  /*
  * final Friend friend;
  * FriendCard({this.friend})
  * name, club, picture
  * */
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0) ,
      color: Colors.white,
      elevation: 16.0,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(45.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            child: CircleAvatar(),
          ),
          SizedBox(height: 15,),
          Text("Jack Brandes"),
          SizedBox(height: 5.0,),
          Text("ICRFC"),
        ],
      ),
    );
  }
}
