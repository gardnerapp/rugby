import 'package:flutter/material.dart';
import 'package:rugby/components/friends/friend_card.dart';
import '../app_bar.dart';

//TODO add back button
//Probablly need a search bar to search friends

class FriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      body: GridView.count(crossAxisCount: 2,
            children: List.generate(6, (index)=> FriendCard())
      )
    );
  }
}
