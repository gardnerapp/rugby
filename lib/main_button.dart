import 'package:flutter/material.dart';

//train, play, recover

class MainButton extends StatelessWidget {
 final IconData icon;
 final Color color;
 MainButton(this.icon, this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){
            print("Tapped");
          },
      splashColor: this.color,
      splashFactory: InkSplash.splashFactory,
      borderRadius: BorderRadius.circular(100),
          child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[300],
                  border: Border.all(width: 5, color: this.color),
                boxShadow: [
                  BoxShadow(color: this.color, spreadRadius: 2.5, blurRadius: 2.5, offset: Offset(0,0))
                ]
              ),
              child: Icon(
                this.icon,
                color: this.color,
                size: 35.0,
              )),
        );
  }
}
