import 'package:flutter/material.dart';
import 'package:rugby/components/styles/fonts.dart';

AppBar mainAppBar(){
  return AppBar(title: Text("Touch Rugby USA", style: appBarHeaderText(),),
    elevation: 16.0,
    flexibleSpace: appBarGradient(),
    leading: IconButton(
        icon: Icon(Icons.person),
        splashColor: Colors.white,
        onPressed: (){
      print("hello");
      //TODO Route to Friends page
        }),
  );
}

Container appBarGradient(){
  return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: <Color>[Colors.red, Colors.white, Colors.blue])));
}

BottomAppBar bottomBar(){
  return BottomAppBar(
    elevation: 10.0,
    child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: <Color>[Colors.red, Colors.white, Colors.blue])),
    height: 70.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
            IconButton(
              splashColor: Colors.white,
              iconSize: 100.0,
              icon: Icon(
                Icons.people,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              splashColor: Colors.white,
              iconSize: 100.0,
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ));
}

Container bottomBarButton(){
  return Container(
    height: 100,
    width: 100,
    child: FittedBox(
      child: FloatingActionButton(
        splashColor: Colors.red,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.local_activity,
            color: Colors.red,
          ),
          onPressed: (){}),
    ),
  );
}