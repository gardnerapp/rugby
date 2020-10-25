import 'package:flutter/material.dart';
import 'package:rugby/components/styles/fonts.dart';

AppBar customAppBar(String title){
  return AppBar(title: Text(title, style: headerStyle(),),
    backgroundColor: Colors.orange,
    elevation: 20.0,
  );
}

List<Widget> customFooting = [
  IconButton(icon: Icon(Icons.fitness_center), onPressed: null),
  IconButton(icon: Icon(Icons.fitness_center), onPressed: null),
  IconButton(icon: Icon(Icons.fitness_center), onPressed: null),




];