import 'package:flutter/material.dart';
import 'package:rugby/components/panels/panel_styles.dart';

//profile picture
//username
//description of action
//clickable
//TODO round Corners

class FriendPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MetaPanel(ListTile(
      contentPadding: EdgeInsets.all(10.0),
      dense: true,
      title: Text(
        '@mgScar',
        style: titleTextStyle(),
      ),
      subtitle: Text("Is attending a game @ 3:00pm Today!",
          style: subTitleTextStyle()),
      leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {},
          child: CircularLeading(CircleAvatar())),
    ));
  }
}
