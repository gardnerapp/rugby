import 'package:flutter/material.dart';
import 'package:rugby/components/friends/friend_card.dart';
import '../app_bar.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

//TODO add back button
//Todo wrap card in button w colored onPress
//Probablly need a search bar to search friends
//search bar will filter out friends who do not fit the regex

class FriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
        body: Column(children: [
          //Expanded(child: SearchBar(onSearch: null, onItemFound: null)),
          Expanded(child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(6, (index) => FriendCard())))
        ]));
  }
}
