import 'package:flutter/material.dart';
import 'package:rugby/components/app_bar.dart';
import 'components/match/match.dart';
import 'package:rugby/components/friends/friend_list.dart';
import 'package:rugby/components/profile.dart';
import 'package:rugby/feeds/friend_feed.dart';
import 'package:rugby/main_button.dart';
import 'package:rugby/feeds/location_feed.dart';
import 'feeds/donations.dart';
//create game
//rsvp to game
//see who is going
//create profile
//


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      initialRoute: '/',
      routes: {
        '/friends': (context) => FriendList(),
        '/match': (context) => Match()
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar(),
        body: PageView(
          children: <Widget>[
            Profile(),
            FriendFeed(),
            LocationFeed(),
            Donations()
          ],
        ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: bottomBarButton(),
      bottomNavigationBar: bottomBar(),

    );
  }
}

//Games Near Me, Post a Game
//add Box shadow to each of the cards

class Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Card(
        elevation: 16.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0)
        ),
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MainButton(Icons.fitness_center, Colors.red), MainButton(Icons.healing, Colors.white), MainButton(Icons.all_inclusive, Colors.blue)
          ],

        )
    );
  }
}
