import 'package:flutter/material.dart';

class SocialContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODo dynamic render w mate status
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SocialButton(Icons.import_contacts, Colors.red, "Mates"),
        SocialButton(Icons.message, Colors.blue, "Invite"),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  SocialButton(this.icon, this.color, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: color.withOpacity(0.2),
          spreadRadius: 10,
          blurRadius: 10,
          offset: Offset(0, 3),
        )
      ],
      ),
      child: ButtonTheme(
        height: 50,
        splashColor: Colors.white,
        buttonColor: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black87)
        ),
        child: RaisedButton.icon(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 35.0,
              color: Colors.white,
            ),
            label: Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,
              fontSize: 20.0
              ),
            )),
      ),
    );
  }
}
