import 'package:flutter/material.dart';

//pic
//name
//club
//position
//I love rugby because

class Profile extends StatelessWidget {
  /*
  * final User user;
  * Profile({this.user})
  * */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.blue,
                ])),
            child: Container(
              width: double.infinity,
              height: 521.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      //backgroundImage: User.img
                      radius: 70.0,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Corey Gardner",
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    ),
                    SizedBox(height: 10.0),
                    Text("ICRFC", style: TextStyle(fontSize: 18.0, color: Colors.black),),
                    SizedBox(height: 10.0),
                    Text("Second Row", style: TextStyle(fontSize: 18.0, color: Colors.black) , ),
                    SizedBox(height: 10.0),
                    //action buttons invite to game, add to team
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 5.0,
                      ),
                      clipBehavior: Clip.antiAlias,
                      color: Colors.white,
                      elevation: 16.0,
                      shadowColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          //circular buttons
                          //play ; add or message
                          //play should pull up screen with games user is attending
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/match');
                              },
                              elevation: 16.0,
                              fillColor: Colors.red,
                              splashColor: Colors.red[300],
                            child: Icon(
                              Icons.directions_run,
                              size: 35.0,
                              color: Colors.white
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),RawMaterialButton(onPressed: (){
                                  Navigator.pushNamed(context, '/friends');
                            },
                            elevation: 16.0,
                            fillColor: Colors.red,
                            splashColor: Colors.red[300],
                            child: Icon(
                              Icons.people,
                              size: 35.0,
                              color: Colors.white
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(onPressed: (){},
                            elevation: 16.0,
                            fillColor: Colors.red,
                            splashColor: Colors.red[300],
                            child: Icon(
                              Icons.message,
                              size: 35.0,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        )
      ],),
    );
  }
}

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55,
        height: 55,
        padding: EdgeInsets.symmetric(vertical: 4.0),
        alignment: Alignment.center,
        child: CircleAvatar()
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //bunch of text widgest w name clubd position
      ],
    );
  }
}

//Row of team mate avatars 10 chosen @ randomn,
// click for more and then bring to friend list
class TeamMates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Profile(), Profile(), Profile()
        ],
      ),
    );
  }
}


