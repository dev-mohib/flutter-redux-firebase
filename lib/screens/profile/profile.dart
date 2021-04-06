import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool is_logged_in = false;
  @override
  void initState() {
    if (!is_logged_in) {
      Navigator.pushNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is Profile Screen"),
      ),
    );
  }
}
