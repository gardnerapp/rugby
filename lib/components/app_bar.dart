import 'package:flutter/material.dart';
import 'package:rugby/components/styles/fonts.dart';

AppBar customAppBar(String title){
  return AppBar(title: Text(title, style: headerStyle(),),
    backgroundColor: Colors.blueAccent,
    elevation: 20.0,
  );
}
