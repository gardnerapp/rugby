import 'package:rugby/models/user.dart';

class Match{
  final String location;
  final String zipCode;
  List<User> users;

  Match({this.location, this.zipCode, this.users});
}