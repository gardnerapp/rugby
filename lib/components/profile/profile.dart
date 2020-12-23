import 'package:flutter/material.dart';
import 'package:rugby/components/profile/social.dart';
import 'playerinfo.dart';
import 'stats.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PlayerInfoView(),
        SocialContainer(),
        //Invite to game, Add Mate, view mates
        Stats(),
      ],
    );
  }
}




//todo mates page => button for friends
//todo Social Invite to game, Add a mate,View mates 
