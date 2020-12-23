import 'package:flutter/material.dart';

class PlayerInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15, top: 15, bottom: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topRight: Radius.circular(68.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.1, 1.1),
                  blurRadius: 10.0)
            ]),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
                    child: Column(
                      children: <Widget>[
                        PlayerDetails("Name", "Corey Gardner", Colors.black87),
                        PlayerDetails("Club", "ICRF", Colors.red),
                        PlayerDetails("Position", "Clean Out", Colors.blue),
                      ],
                    ),
                  )),
                  PlayerPic(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PlayerPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Center(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(.5),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    border: new Border.all(
                        width: 4, color: Colors.blue.withOpacity(.5)),
                  ),
                  child: Column(
                    //TODO pic
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class PlayerDetails extends StatelessWidget {
  final String title;
  final String info;
  final Color color;

  PlayerDetails(this.title, this.info, this.color);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 40,
          width: 2,
          decoration: BoxDecoration(
              color: this.color.withOpacity(.5),
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 4, bottom: 2),
                child: Text(this.title,
                    textAlign: TextAlign.center, style: titleStyle(this.color)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 4, bottom: 3),
                    child: Text(
                      this.info,
                      style: infoStyle(this.color),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  TextStyle titleStyle(Color color) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: -0.1,
      color: color.withOpacity(.5),
    );
  }

  TextStyle infoStyle(Color color) {
    return TextStyle(
        fontWeight: FontWeight.w600, fontSize: 16.0, letterSpacing: 1.0);
  }
}
