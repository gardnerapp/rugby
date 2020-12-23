import 'package:flutter/material.dart';
//TODO Wrap containers in something that will allow them to adjust their size to the data being fed
//Triple digit stats will cause pixel overflow

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      height: 250,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.only(
          top: 0, bottom: 1, right: 5, left: 5),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StatContainer(OffenseView()),
          StatContainer(DefenseView()),
          StatContainer(PenaltyView()),
        ],
      ),
    );
  }
}

class StatContainer extends StatelessWidget {
  final Widget child;

  StatContainer(this.child);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        child: Stack(children: <Widget>[
          Padding(
              padding:
                  const EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 16),
              child: Container(
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.red,
                          offset: const Offset(1.1, 4.0),
                          blurRadius: 10.0)
                    ],
                    gradient: LinearGradient(
                      colors: <Color>[
                        Colors.red[500],
                        Colors.red[400],
                        Colors.red[300],
                        Colors.red[200],
                        Colors.white,
                        Colors.blue[200],
                        Colors.blue[300],
                        Colors.blue[400],
                        Colors.blue[500]
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(54.0)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(
                          top: 54, left: 16, right: 16, bottom: 8),
                      child: child))),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                    shape: BoxShape.circle)),
          ),
        ]));
  }
}

class OffenseView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Offense\n",
          textAlign: TextAlign.center,
          style: primaryStatTitle()
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    '5 Tries\n'
                    '2 Assists',
                    style: secondaryStatTitle())
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "29",
              textAlign: TextAlign.center,
              style: tertiaryStatTitle()
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 3),
              child: Text(
                "Points",
                style: quarternaryStatTitle()
              ),
            )
          ],
        ),
        //  Positioned(
        //         top: 0,
        //         left: 8,
        //         child: SizedBox(
        //             width: 80,
        //             height: 80,
        //             child: Image(
        //               image: AssetImage("rugbyball.jpg"),
        //             ))
        // ),
      ],
    );
  }
}

class DefenseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Defense\n",
          textAlign: TextAlign.center,
          style: primaryStatTitle()
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '15 Downs\n'
                  '2 Turnovers',
                  style: secondaryStatTitle()
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "17",
              textAlign: TextAlign.center,
              style: tertiaryStatTitle()
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 3),
              child: Text(
                "Stops",
                style: quarternaryStatTitle()
              ),
            )
          ],
        ),
      ],
    );
  }
}

class PenaltyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Foul Play \n",
          textAlign: TextAlign.center,
          style: primaryStatTitle()
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '2 Yellows\n'
                  '0 Reds',
                  style: secondaryStatTitle()
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "-2",
              textAlign: TextAlign.center,
              style: tertiaryStatTitle()
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 3),
              child: Text(
                "Penalties",
                style: quarternaryStatTitle()
              ),
            )
          ],
        ),
        //  Positioned(
        //         top: 0,
        //         left: 8,
        //         child: SizedBox(
        //             width: 80,
        //             height: 80,
        //             child: Image(
        //               image: AssetImage("rugbyball.jpg"),
        //             ))
        // ),
      ],
    );
  }
}

TextStyle primaryStatTitle(){
  return TextStyle(fontWeight: FontWeight.w700,
    fontSize: 20,
    letterSpacing: 0.2,
    color: Colors.black,);
}

TextStyle secondaryStatTitle() {
  return TextStyle(fontWeight: FontWeight.w600,
    fontSize: 16,
    letterSpacing: 0.2,
    color: Colors.black,);
}

TextStyle tertiaryStatTitle(){
  return TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 27,
    letterSpacing: 0.2,
    color: Colors.black,
  );
}

TextStyle quarternaryStatTitle(){
  return TextStyle( fontWeight: FontWeight.w700,
  fontSize: 14,
  letterSpacing: 0.2,
  color: Colors.black);
}

