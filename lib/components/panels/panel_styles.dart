import 'package:flutter/material.dart';
import 'package:rugby/components/panels/friend_panel.dart';

//holds text styles and Card shape for panels

class MetaPanel extends StatelessWidget {
  final Widget listTile;
  MetaPanel(this.listTile);
  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.red,
        elevation: 16.0,
        margin: EdgeInsets.all(10.0),
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
    child: listTile,
    );
  }
}

TextStyle titleTextStyle(){
  return TextStyle(
    color: Colors.black, fontSize: 20.0,
  );
}

TextStyle subTitleTextStyle(){
  return TextStyle(
    color: Colors.black, fontSize: 15.0,
  );
}

class CircularLeading extends StatelessWidget {
  //passed into gesture detector Friend Takes CircularAvatar brings to profile
  //locationtakes text with the number of people going

  final Widget child;
  CircularLeading(this.child);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      padding: EdgeInsets.symmetric(vertical: 4.0),
      alignment: Alignment.center,
      child: child,
    );
  }
}


//TODO next further refactor ListTIle
//Can I conditionally render the gesture detector
// based on the type of class being passed?