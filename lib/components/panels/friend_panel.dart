import 'package:flutter/material.dart';
import 'package:rugby/components/panels/panel_styles.dart';
import 'panel.dart';

class FriendPanel extends StatelessWidget {
  //final String user, msg;
  /*final Route*/
 // FriendPanel(this.user,this.msg);
  @override
  Widget build(BuildContext context) {
    return Panel(
      title: "@mgscar",
      subtitle: "Is attending a game @ 3:00pm Today!",
      leading: GestureDetector(
       onTap: (){

       },
        child: CircularLeading(CircleAvatar()),
      ),
    );
  }
}


