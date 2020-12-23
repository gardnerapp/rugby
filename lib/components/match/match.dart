import 'package:flutter/material.dart';
import 'package:rugby/components/match/styles.dart';
import 'package:rugby/components/panels/panel_styles.dart';
import 'package:rugby/components/profile/playerinfo.dart';
import 'package:rugby/components/profile/social.dart';

class Match extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget> [
            Row(
            children: <Widget>[
              TeamContainer(teamName: "Coligni Crew", teamColor: Colors.redAccent[200],),
              TeamContainer(teamName: "Mt. Clove", teamColor: Colors.lightBlueAccent,),
            ],
          ),
            //VS widget
            Positioned(
              left: MediaQuery.of(context).size.width / 2.3,
              top: 10.0,
              child: Container(
                height: 55.0,
                width: 55.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  elevation: 16.0,
                  color: Colors.white,
                  shadowColor: Colors.white70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("VS.", style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
              ),
            )
          ]
        ),
        MatchDetails(),
      ],
    );

  }
}

//VS Square box white container w z axis overlay

class TeamContainer extends StatelessWidget {
  final String teamName;
  final Color teamColor;

  const TeamContainer({Key key, this.teamName, this.teamColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(color: teamColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Expanded(
            child: Container(
              color: teamColor,
              child: Text(
                teamName,
                style: teamNameStyle(),
              ),
            ),
          ),
           Container(
              height: 200,
              width: 200,
              child: GridView(scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10.0),
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: List.generate(16, (index) => TeamProfile()))
            ),
        ]
      ),
    );
  }
}

class MatchDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 8.0),
        Text("4:00PM | Mazella Field",
        style: matchDetailsStyle(),
        ),
        SizedBox(height: 8.0),
        Text("Competitive",
          style: matchDetailsStyle(),
        ),
        SizedBox(height: 8.0),
        Row(
          children: <Widget>[
            SocialButton(Icons.whatshot, Colors.red, "Join Coligini"),
            SocialButton(Icons.ac_unit, Colors.blue, "Join Clove")
          ],
        ),
        SizedBox(height: 8.0),
        SocialButton(Icons.people, Colors.greenAccent, "Invite Friends")
    ]
    );
  }
}

class TeamProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: 50,
      width: 50,
      child: CircleAvatar(),);
  }
}

//TODO start backe conditional rendering
