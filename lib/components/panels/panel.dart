import 'package:flutter/material.dart';
import 'panel_styles.dart';

//TODO Add OnTap with Names Routes

class Panel extends StatelessWidget {
  final String title, subtitle;
  final Widget leading;
  Panel({this.title, this.subtitle, this.leading});
  @override
  Widget build(BuildContext context) {
    return MetaPanel(
      ListTile(
        contentPadding: EdgeInsets.all(10.0),
        dense: true,
        title: Text(this.title, style: titleTextStyle()),
        subtitle: Text(this.subtitle, style: subTitleTextStyle()),
        leading: this.leading,
      )
    );
  }
}

